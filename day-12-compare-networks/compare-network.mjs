import { address, createSolanaRpc, devnet, mainnet } from "@solana/kit";

// createing 2 diff RPC connections
const devnetRpc = new createSolanaRpc(devnet("https://api.devnet.solana.com"));
const mainnetRpc = new createSolanaRpc(
  mainnet("https://api.mainnet-beta.solana.com"),
);

// we'll use Token-2022 program, as it exists on both networks
const targetAddress = address("TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb");

async function getNetworkData(rpc, networkName) {
  const { value: balanceInLamports } = await rpc
    .getBalance(targetAddress)
    .send();
  const balanceInSol = Number(balanceInLamports) / 1e9;

  const signatures = await rpc
    .getSignaturesForAddress(targetAddress, { limit: 3 })
    .send();

  console.log(`\n--- ${networkName} ---`);
  console.log(`Address : ${targetAddress}`);
  console.log(`Balance : ${balanceInSol} SOL`);
  console.log(`Recent transactions: ${signatures.length}`);

  for (const tx of signatures) {
    const time = tx.blockTime
      ? new Date(Number(tx.blockTime) * 1000).toLocaleString()
      : "unknown";
    console.log(`  ${tx.signature.slice(0, 20)}...  slot ${tx.slot}  ${time}`);
  }
}

await getNetworkData(devnetRpc, "Devnet");
await getNetworkData(mainnetRpc, "Mainnet");

console.log("\n--- Summary ---");
console.log(
  "Using the same address, we can see that the balance and recent transactions differ between devnet and mainnet",
);
