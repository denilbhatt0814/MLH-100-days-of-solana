<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019dce5b-1ba5-f91a-07c9-8c0b6430f857.jpg?t=1777285918" width="60%" alt="Solana Challenge Banner" />
  <h1>🔎 Day 8: Read Your First On-Chain Data</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Today I read live on-chain data from Solana's devnet. This challenge focuses on reading the public state: querying an account's SOL balance using the Solana Kit RPC client.

---

## 🛠️ What I Built

I created a small script `read-balanace.mjs` that connects to Devnet and prints the SOL balance of a target address:

- Connects to `https://api.devnet.solana.com` using `createSolanaRpc`
- Uses `rpc.getBalance()` to fetch the lamport balance for a given address
- Converts lamports to SOL and prints a friendly message

Script: [read-balanace.mjs](read-balanace.mjs)

---

## Key Steps (from the script)

2. Create an RPC client connected to Devnet:

   ```js
   const rpc = createSolanaRpc(devnet("https://api.devnet.solana.com"));
   ```

3. Provide the target address:

   ```js
   const targetAddr = address("B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B");
   ```

4. Query balance and convert lamports → SOL:

   ```js
   const { value: balanceInLamports } = await rpc.getBalance(targetAddr).send();
   const balanceInSol = Number(balanceInLamports) / 1e9;
   console.log(`Balance of ${targetAddr}: ${balanceInSol} SOL`);
   ```

---

## How to run

1. Ensure you have Node.js and `@solana/kit` installed in the folder:

```bash
npm init -y
npm install @solana/kit
node read-balanace.mjs
```

2. Replace the address in the script with your own wallet address to query your balance.

---

## Example output

```
Balance of B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B: 0.012345678 SOL
```

---

## Key Takeaways

- Reading data from Solana is permissionless and public—no API key required.
- Balances are returned in lamports (1 SOL = 1_000_000_000 lamports), so remember to convert.
- This is a safe way to inspect accounts without needing a wallet or signing anything.

---

## Resources

- [MLH Day 8 Challenge](https://www.mlh.com/challenges/019dce5b-1ba5-f91a-07c9-8c0b6430f857)
- `read-balanace.mjs` (this folder)
- [Solana Kit docs](https://www.solanakit.com/docs)
- [Solana RPC docs](https://solana.com/docs/rpc)
- [Solana Explorer (devnet)](https://explorer.solana.com/?cluster=devnet)

---

<div align="center">
  <i>✨ This documents my Day 8 work: reading on-chain data with Solana Kit. ✨</i>
</div>
