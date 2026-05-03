<div align="center">
	<img src="https://mlhusercontent.com/backgrounds/challenges/019de298-dba5-6877-677f-57999f6a69df.jpg?t=1777623162" width="60%" alt="Solana Challenge Banner" />
    <h1>🔀 Day 12: Compare Devnet and Mainnet</h1>
    <p><i>MLH 100 Days of Solana Challenge — Compare data across devnet and mainnet</i></p>

</div>

---

## 📝 Overview

Day 12 demonstrates that devnet and mainnet are separate networks (databases). The same code can query both networks, but the data — balances and transaction histories — will differ. I wrote a script to query the same address on both clusters and compare results side-by-side.

---

## 🛠️ What I Built

- `compare-network.mjs` — connects to Devnet and Mainnet via `@solana/kit`, queries the same address (Token-2022 program), and prints balance + recent transactions for each network.
- The script shows how the same RPC calls return different data depending on the cluster URL.

---

## Key Steps (from the script)

1. Create two RPC clients.

2. Set a target address that exists (or is meaningful) on both networks.

3. For each network, call `getBalance` and `getSignaturesForAddress` and print results.

---

## How to run

1. Install dependencies if needed:

```bash
cd day-12-compare-networks
npm init -y
npm install @solana/kit
node compare-network.mjs
```

2. The script will print Devnet results, then Mainnet results, and a short summary.

---

## Example output (trimmed)

```
--- Devnet ---
Address : TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
Balance : 0.0 SOL
Recent transactions: 3
	5YJ...  slot 1234567  5/2/2026, 1:52:45 PM

--- Mainnet ---
Address : TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
Balance : 42.1234 SOL
Recent transactions: 3
	3Km...  slot 987654321  4/30/2026, 10:12:00 AM

--- Summary ---
Using the same address, we can see that the balance and recent transactions differ between devnet and mainnet
```

---

## Key Takeaways

- Devnet and Mainnet are separate clusters with independent state — balances and transaction histories will not match.
- The same `@solana/kit` APIs work across clusters; only the RPC URL changes.
- Be careful when querying mainnet: respect rate limits and avoid heavy polling against public endpoints.

---

## Resources

- MLH Day 12 challenge: https://www.mlh.com/challenges/019de298-dba5-6877-677f-57999f6a69df
- `compare-network.mjs` (this folder)
- Solana clusters docs: https://solana.com/docs/core/clusters
- Solana Explorer (mainnet): https://explorer.solana.com/
- Solana Explorer (devnet): https://explorer.solana.com/?cluster=devnet

---

<div align="center">
	<i>✨ This documents my Day 12 work: comparing Devnet vs Mainnet using Solana Kit. ✨</i>
</div>
