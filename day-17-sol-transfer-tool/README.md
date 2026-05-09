<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019dfcbd-4e12-b1b7-6e14-6a6fe97b529e.jpg?t=1778074489" width="60%" alt="Build a transfer tool" />
  <h1>🔧 Day 17: Build a transfer tool</h1>
  <p><i>MLH 100 Days of Solana Challenge — turn a one-off CLI transfer into a reusable Node tool</i></p>
</div>

---

## 📝 Overview

Today I turned the manual CLI flow from previous days into a small Node.js transfer tool that accepts a recipient and amount, checks the sender balance, sends a transfer using `@solana/kit`, and prints an Explorer link after confirmation.

This folder contains a minimal, opinionated CLI wrapper: `transfer.mjs` (ES module) and a lightweight `package.json` with required dependencies.

---

## 🛠️ What the tool does

- Loads your default Solana keypair from `~/.config/solana/id.json`.
- Connects to Devnet via `@solana/kit`.
- Checks the sender balance and aborts if insufficient (saves you fees).
- Builds, signs, sends, and confirms a transfer transaction.
- Prints the transaction signature and a Solana Explorer URL for easy verification.

---

## 🛠️ Steps Followed / Implementation notes

1. Use `@solana/kit` helpers to construct a versioned transaction message (fee payer, blockhash, instruction).
2. Convert SOL amount to lamports using BigInt-aware helpers.
3. Perform a pre-send balance check to avoid failed transactions (and wasted fees).
4. Send and confirm the transaction, then show updated balance.

---

## ⚙️ Run locally

Requirements: Node.js v18+ and the Solana CLI installed and configured with a funded devnet keypair.

1. Install dependencies

```bash
cd day-17-sol-transfer-tool
npm install
```

2. Usage

```bash
# node transfer.mjs <RECIPIENT_PUBLIC_KEY> <AMOUNT_IN_SOL>
node transfer.mjs 3N8Zt5s... 0.5
```

If you run the script without arguments it prints a usage message and exits.

3. Example: generate a recipient and run

```bash
solana-keygen new --outfile ~/recipient-keypair.json --no-bip39-passphrase
node transfer.mjs $(solana address -k ~/recipient-keypair.json) 0.001
```

---

## 🔍 Example output

1. Usage shown when arguments missing

```
Usage: node transfer.mjs <RECIPIENT_PUBLIC_KEY> [AMOUNT_IN_SOL]
Example: node transfer.mjs 3N8Zt5s9v1X9u5j6z7y8w9x0a1b2c3d4e5f6g7h8i9j 0.5
```

2. Insufficient balance (tool aborts with helpful message)

```
Sender Balance: 2.8980 SOL
Error: Insufficient balance. You need at least 100.0000 SOL + small fees to perform this transfer.
Get more devnet SOL at https://faucet.solana.com/
```

3. Successful transfer (confirmed)

```
Solana Transfer Tool
====================
Connected to Solana Devnet.

Sender: <SENDER_PUBKEY>
Recipient: <RECIPIENT_PUBKEY>
Amount (SOL): 0.001

Sender Balance: 2.8990 SOL

Sending transaction...
Transaction confirmed!
Signature: 3njQhDmeDs6Ss8dzE3Mvox9sNLDWsvnEWfpgLbyHkSySjV5VnBBbn3qKbBJ4gf4cc76eoRkSYoQxziyGnqYbtVhM
View on Solana Explorer: https://explorer.solana.com/tx/3njQhDmeDs6Ss8dzE3Mvox9sNLDWsvnEWfpgLbyHkSySjV5VnBBbn3qKbBJ4gf4cc76eoRkSYoQxziyGnqYbtVhM?cluster=devnet

Updated Sender Balance: 2.8980 SOL
```

---

## 🔗 Resources

- MLH Challenge: Build a transfer tool — https://www.mlh.com/events/100-days-of-solana/challenges/019dfcbd-4e12-b1b7-6e14-6a6fe97b529e
- @solana/kit docs: https://www.npmjs.com/package/@solana/kit
- Solana Explorer (devnet): https://explorer.solana.com/?cluster=devnet

---

<div align="center">
	<i>✨ This documents my Day 17 work: built CLI tool to transfer SOL. ✨</i>
</div>
