<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019e0712-5d28-7567-eea2-2c0d514e5553.jpg" width="60%" alt="Explore failed transactions" />
  <h1>💥 Day 19: Explore failed transactions</h1>
  <p><i>MLH 100 Days of Solana Challenge — intentionally trigger and inspect failed transactions</i></p>
</div>

---

## 📝 Overview

Today’s exercise is about failure modes: deliberately create transactions that fail on-chain, capture their signatures, and inspect the detailed failure information returned by the network (error code, logs, fee charged, compute units consumed). Understanding failures is essential because failed transactions still consume fees and can reveal important runtime limits.

---

## 🛠️ What I built

- `force-fail.mjs` — a small Node script that builds a transfer far larger than the sender’s balance and sends it with `skipPreflight: true`, forcing the transaction to reach the network and fail on-chain. The script prints the failed transaction signature and an Explorer URL for inspection.

---

## ⚙️ Run the experiment

Requirements: Node.js v18+, `solana` CLI installed and configured, devnet-funded wallet at `~/.config/solana/id.json`.

1. Install dependencies (if not already installed)

```bash
cd day-19-fail-txns
npm install @solana/kit @solana-program/system
```

2. Create a broke recipient wallet (never funded)

```bash
solana-keygen new --outfile /tmp/broke-wallet.json --no-bip39-passphrase --force
```

3. Run the failure script

```bash
node force-fail.mjs
```

The script will print a signature and an Explorer URL. Copy the signature and inspect it with the CLI or Explorer (examples below).

---

## 🔎 Inspect the failed transaction

1. Inspect with the CLI (verbose):

```bash
solana confirm -v <FAILED_SIGNATURE> --url devnet
```

2. View on Explorer:

```
https://explorer.solana.com/tx/<FAILED_SIGNATURE>?cluster=devnet
```

You should see:

- A non-empty `meta.err` field describing the instruction error (e.g. `InsufficientFunds` or `InstructionError`).
- Program log messages showing what happened during execution.
- Fee charged and account balance changes (the fee payer still pays fees even when the transfer fails).

---

## ⚠️ Why this works

Normally the CLI simulates a transaction locally and rejects obviously invalid transactions before sending them. The `force-fail.mjs` script sets `skipPreflight: true` when calling `rpc.sendTransaction()` so the transaction bypasses local simulation and reaches the network. The network then attempts to execute it, consumes compute and charges fees, and returns a structured on-chain error when it fails.

This is a useful technique for learning, but be careful: failed transactions still cost lamports.

---

## ✅ Example output (from running the script)

```
Failed transaction signature: 5QZS2YoPV1yhp832wWdD5DvishTJzba2SmWAJje3sVRDwMXxiTBdujA3yFh5LwBzuEZzTukPkKXrptJtAcLDFyTm
Explorer URL: https://explorer.solana.com/tx/5QZS2YoPV1yhp832wWdD5DvishTJzba2SmWAJje3sVRDwMXxiTBdujA3yFh5LwBzuEZzTukPkKXrptJtAcLDFyTm?cluster=devnet
```

Then inspect with:

```
solana confirm -v 5QZS2YoPV1yhp832wWdD5DvishTJzba2SmWAJje3sVRDwMXxiTBdujA3yFh5LwBzuEZzTukPkKXrptJtAcLDFyTm --url devnet
```

---

## 🔗 Resources

- MLH Challenge: Explore failed transactions — https://www.mlh.com/events/100-days-of-solana/challenges/019e0712-5d28-7567-eea2-2c0d514e5553
- Solana RPC: `sendTransaction` (skipPreflight) & `getTransaction` — https://solana.com/docs/rpc
- Solana Explorer (devnet) — https://explorer.solana.com/?cluster=devnet

---

<div align="center">
	<i>✨ This documents my Day 19 work: understanding failed transactions. ✨</i>
</div>
