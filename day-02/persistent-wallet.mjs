import {
  createKeyPairSignerFromBytes,
  createSignerFromKeyPair,
  createSolanaRpc,
  generateKeyPair,
  devnet,
} from "@solana/kit";
import { readFile, writeFile } from "node:fs/promises";

const WALLET_FILE = "wallet.json";
const rpc = createSolanaRpc(devnet("https://api.devnet.solana.com"));

async function loadOrCreateWallet() {
  try {
    // try to load existing wallet
    const data = JSON.parse(await readFile(WALLET_FILE, "utf-8"));
    const secretBytes = new Uint8Array(data.secretKey);
    const wallet = await createKeyPairSignerFromBytes(secretBytes);
    console.log("Loaded existing wallet with pub key:", wallet.address);

    return wallet;
  } catch (err) {
    console.log(err);
    // no wallet found, create a new one
    const keyPair = await generateKeyPair(true); // true = keys are extractable to persist

    // exporting public key
    const publicKeyBytes = new Uint8Array(
      await crypto.subtle.exportKey("raw", keyPair.publicKey),
    );

    // exporting private key in pkcs8 format (raw expot of Ed25519 not supported in Node.js)
    const pkcs8 = await crypto.subtle.exportKey("pkcs8", keyPair.privateKey);
    const privateKeyBytes = new Uint8Array(pkcs8).slice(-32); // extract the last 32 bytes which is the secret key

    // Solana expects a 64-byte keypair: [publicKey (32 bytes) | privateKey (32 bytes)]
    const keypairBytes = new Uint8Array(64);
    keypairBytes.set(privateKeyBytes, 0);
    keypairBytes.set(publicKeyBytes, 32);

    await writeFile(
      WALLET_FILE,
      JSON.stringify({ secretKey: Array.from(keypairBytes) }),
      "utf-8",
    );

    const wallet = await createSignerFromKeyPair(keyPair);
    console.log("Created new wallet with pub key:", wallet.address);
    console.log("Wallet saved to", WALLET_FILE);
    return wallet;
  }
}

const wallet = await loadOrCreateWallet();

// check balance
const { value: balance } = await rpc.getBalance(wallet.address).send();
const balanceInSol = Number(balance) / 1e9;

console.log(`\nAddress: ${wallet.address}`);
console.log(`Balance: ${balanceInSol} SOL`);

if (balanceInSol === 0) {
  console.log(
    "\nWallet is empty. Visit https://faucet.solana.com/ to get some devnet SOL for:",
  );
  console.log(wallet.address);
}
