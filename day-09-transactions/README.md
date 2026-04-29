<div align="center">
	<img src="https://mlhusercontent.com/backgrounds/challenges/019dd348-5715-e9e0-b7e1-3a7751d816df.jpg?t=1777366227" width="60%" alt="Solana Challenge Banner" />
	<h1>📜 Day 9: Fetch and Display Recent Transactions</h1>
	<p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Today I fetched recent on-chain activity for a public address on Solana devnet. The goal was to query transaction signatures and display each signature, slot, timestamp, and status — essentially a GET /users/:id/transactions for a blockchain account.

---

## 🛠️ What I Built

I created `fetch-transactions.mjs` which:

- Connects to Devnet via `createSolanaRpc`
- Calls `getSignaturesForAddress` to retrieve the latest 5 transaction signatures for a target address
- Prints each signature, slot, human-readable block time, and status (Success/Failed)

Script: [fetch-transactions.mjs](fetch-transactions.mjs)

---

## Key Steps (from the script)

1. Import the required helpers from `@solana/kit`
2. Create an RPC client connected to Devnet
3. Set the target address to query
4. Fetch the 5 most recent signatures and print details

---

## How to run

Ensure you have Node.js and `@solana/kit` installed in the project folder, then run:

```bash
npm init -y
npm install @solana/kit
node fetch-transactions.mjs
```

---

## Example output

```

Latest 5 transactions for TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA:

Signature : 5YJ... (base58 signature)
Slot      : 123456789
Block Time: 4/29/2026, 10:12:34 AM
Status    : Success
---
... (4 more entries)

```

---

## Key Takeaways

- `getSignaturesForAddress` is a simple RPC call to read transaction history for any address.
- Transaction signatures are unique identifiers you can paste into Solana Explorer to inspect full details.
- Block times may be missing on older transactions; handle `blockTime` absence gracefully.

---

## Resources

- [MLH Day 9 Challenge](https://www.mlh.com/challenges/019dd348-5715-e9e0-b7e1-3a7751d816df)
- `fetch-transactions.mjs` (this folder)
- [Solana RPC docs: getSignaturesForAddress](https://solana.com/docs/rpc/http#getsignaturesforaddress)
- [Solana Explorer (devnet)](https://explorer.solana.com/?cluster=devnet)

---

<div align="center">
	<i>✨ This documents my Day 9 work: fetching and displaying recent transactions on Solana. ✨</i>
</div>
