import { address, createSolanaRpc, devnet } from "@solana/kit";

const rpc = createSolanaRpc(devnet("https://api.devnet.solana.com"));

const targetAddr = address("B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B");

const { value: balanceInLamports } = await rpc.getBalance(targetAddr).send();

const balanceInSol = Number(balanceInLamports) / 1e9;

console.log(`Balance of ${targetAddr}: ${balanceInSol} SOL`);
