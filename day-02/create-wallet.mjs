import {
  generateKeyPairSigner,
  createSolanaRpc,
  devnet,
  address,
} from "@solana/kit";

const rpc = createSolanaRpc(devnet("https://api.devnet.solana.com"));
const wallet = await generateKeyPairSigner();

console.log("Your new wallet address", wallet.address);
console.log("It's public key, safe to share");
console.log(
  "Private key remains secret (in app memory), do not share it with anyone",
);

const { value: balance } = await rpc
  .getBalance(address("6ymQikY29ZXsju5wFyF2UaUAn46AjcutSXUd5iisPeRW"))
  .send();
const balanceInSol = Number(balance) / 1e9;
console.log(`Balance: ${balanceInSol} SOL`);

// 6ymQikY29ZXsju5wFyF2UaUAn46AjcutSXUd5iisPeRW
