import { address, createSolanaRpc, devnet } from "@solana/kit";

const rpc = createSolanaRpc(devnet("https://api.devnet.solana.com"));

const targetAddr = address("TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA");

// Fetch the latest 5 transaction signatures for the target address
const signatures = await rpc
  .getSignaturesForAddress(targetAddr, { limit: 5 })
  .send();

console.log(`\nLatest 5 transactions for ${targetAddr}:\n `);

// handling each transaction
for (const tx of signatures) {
  const time = tx.blockTime
    ? new Date(Number(tx.blockTime) * 1000).toLocaleString()
    : "N/A";

  console.log(`Signature : ${tx.signature}`);
  console.log(`Slot      : ${tx.slot}`);
  console.log(`Block Time: ${time}`);
  console.log(`Status    : ${tx.err ? "Failed" : "Success"}`);
  console.log("---");
}
