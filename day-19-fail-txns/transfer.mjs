import {
  address,
  createKeyPairSignerFromBytes,
  createSolanaRpc,
  createSolanaRpcSubscriptions,
  pipe,
  createTransactionMessage,
  setTransactionMessageFeePayerSigner,
  setTransactionMessageLifetimeUsingBlockhash,
  appendTransactionMessageInstruction,
  signTransactionMessageWithSigners,
  getSignatureFromTransaction,
  getBase64EncodedWireTransaction,
  lamports,
  devnet,
} from "@solana/kit";
import { readFile } from "node:fs/promises";
import { resolve } from "node:path";
import { homedir } from "node:os";
import { transferWithConfirmation } from "./transactionlogic.mjs";

// --- CONFIG ---
const RPC_URL = devnet("https://api.devnet.solana.com");
const WS_URL = devnet("wss://api.devnet.solana.com");
const LAMPORTS_PER_SOL = 1e9;

// --- Parsing command line args ---
const args = process.argv.slice(2);
if (args.length < 2) {
  console.error(
    "Usage: node transfer.mjs <RECIPIENT_PUBLIC_KEY> [AMOUNT_IN_SOL]",
  );
  console.error(
    "Example: node transfer.mjs 3N8Zt5s9v1X9u5j6z7y8w9x0a1b2c3d4e5f6g7h8i9j 0.5",
  );
  process.exit(1);
}

const recipientPubKey = address(args[0]);
const solAmount = parseFloat(args[1]);

if (isNaN(solAmount) || solAmount <= 0) {
  console.error("Error: Amount must be a positive number.");
  process.exit(1);
}

const transferLamports = lamports(
  BigInt(Math.round(solAmount * LAMPORTS_PER_SOL)),
);

// --- Load keypair from the default Solana CLI location ---
async function loadKeypair() {
  const keypairPath = resolve(homedir(), ".config/solana/id.json");
  const keypairData = await readFile(keypairPath, "utf8");
  const secretKeyBytes = new Uint8Array(JSON.parse(keypairData));
  const keyPair = await createKeyPairSignerFromBytes(secretKeyBytes);
  return keyPair;
}

// --- Main function ---
async function main() {
  console.log("Solana Transfer Tool");
  console.log("====================");

  // 1. connecting to devnet
  const rpc = createSolanaRpc(RPC_URL);
  const rpcSubscriptions = createSolanaRpcSubscriptions(WS_URL);
  console.log("Connected to Solana Devnet.\n");

  // 2. loading keypair
  const sender = await loadKeypair();
  console.log("Sender:", sender.address);
  console.log("Recipient:", recipientPubKey.toString());
  console.log("Amount (SOL):", solAmount);
  console.log("\n");

  // 3. Verifying balance
  const { value: senderBalance } = await rpc.getBalance(sender.address).send();
  const balanceInSol = Number(senderBalance) / Number(LAMPORTS_PER_SOL);
  console.log("Sender Balance:", balanceInSol.toFixed(4), "SOL");

  if (senderBalance < transferLamports) {
    console.error(
      "Error: Insufficient balance. You need at least",
      (Number(transferLamports) / Number(LAMPORTS_PER_SOL)).toFixed(4),
      "SOL + small fees to perform this transfer.",
    );
    console.error("Get more devnet SOL at https://faucet.solana.com/");
    process.exit(1);
  }

  // 4. Building the transaction
  try {
    const signature = await transferWithConfirmation(
      rpc,
      sender,
      recipientPubKey,
      solAmount,
    );

    console.log("Transaction confirmed!");
    console.log("Signature:", signature);
    console.log(
      `View on Solana Explorer: https://explorer.solana.com/tx/${signature}?cluster=devnet`,
    );
  } catch (err) {
    console.error("Transfer failed:", err.message);
    process.exit(1);
  }

  // 5. Show updated balance
  const { value: newBalance } = await rpc.getBalance(sender.address).send();
  const newBalanceInSol = Number(newBalance) / Number(LAMPORTS_PER_SOL);
  console.log("\nUpdated Sender Balance:", newBalanceInSol.toFixed(4), "SOL");
}

main().catch((err) => {
  console.error("\nError:", err.message);
  process.exit(1);
});
