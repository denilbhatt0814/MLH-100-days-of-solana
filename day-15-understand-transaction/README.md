<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019df345-4e9e-7921-7644-4513271dc7a6.jpg?t=1777902899" width="60%" alt="Understand transaction anatomy" />
  <h1>🧾 Day 15: Understand transaction anatomy</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Explore the internal structure of a Solana transaction by sending a small transfer on Devnet, inspecting the serialized output with the CLI, and mapping what you see to the official transaction structure (header, account keys, recent blockhash, instructions, signatures).

---

## 🛠️ Steps Followed

1. **Configured CLI & funded wallet**

- `solana config set --url devnet`
- `solana airdrop 1`

2. **Created a temporary receiving keypair**

- `solana-keygen new --no-bip39-passphrase -o /tmp/temp-wallet.json`

3. **Sent a tiny transfer to produce a real transaction**

- `solana transfer --allow-unfunded-recipient $(solana address -k /tmp/temp-wallet.json) 0.001 --url devnet`

4. **Inspected the serialized transaction**

- `solana confirm -v YOUR_TRANSACTION_SIGNATURE`

---

## ✨ Notes Observed

- **Signatures**: Compact Ed25519 signatures (64 bytes each). The first signature is also the transaction ID.
- **Message payload**: Contains a header (3 bytes), account keys array, recent blockhash (32 bytes), and compiled instructions (program index, account indexes, data bytes).
- **Account ordering matters**: Header fields partition the account keys into permission groups (fee payer, signers, read-only, etc.).
- **Size constraint**: Serialized transactions must fit within **1,232 bytes** (IPv6 MTU minus network headers). This is why Address Lookup Tables and versioned transactions are important for complex operations.

---

## 🔗 Resources

- MLH Challenge: Understand transaction anatomy — https://www.mlh.com/events/100-days-of-solana/challenges/019df345-4e9e-7921-7644-4513271dc7a6
- Solana Docs: Transactions — https://solana.com/docs/core/transactions
- Solana Docs: Transaction Structure — https://solana.com/docs/core/transactions/transaction-structure
- Address Lookup Tables guide — https://solana.com/developers/guides/advanced/lookup-tables

---

<div align="center">
	<i>✨ This documents my Day 15: anatomy of a transaction</i>
</div>
