<div align="center">
	<img src="https://mlhusercontent.com/backgrounds/challenges/019dddb6-fcb4-4f2d-25db-9eae6bc8de9a.jpg?t=1777631234" width="60%" alt="Solana Challenge Banner" />
    <h1>🗄️ Day 11: Database vs Account</h1>
    <p><i>MLH 100 Days of Solana Challenge — Understand how Solana stores data</i></p>

</div>

---

## 📝 Overview

Day 11 explores the core difference between traditional databases and Solana's account model. On Solana every data model is an account — whether that represents a user record, a token mint, or an executable program. Accounts hold bytes of state and are the primitive units of storage on-chain.

---

## 🛠️ What I Built

- A small set of `solana` CLI commands in `script.sh` to inspect accounts and rent behavior on Devnet.
- Posted my thoughts and a short thread on X about the differences and implications: https://x.com/BhattDenil/status/2050790421115400390

---

## Key ideas

- Every data model on Solana is an `account` — storage is not a separate database layer.
- Accounts charge a refundable deposit based on storage size (rent-exempt thresholds apply).
- On Solana:
  - You pay for bytes stored, not for queries.
  - Access control is enforced by the runtime (programs/signers), not by application code alone.
  - Transparency is default — account data is publicly readable.

---

## How to reproduce (run `script.sh`)

This script uses the `solana` CLI to switch to Devnet, airdrop SOL, and inspect accounts. Make sure you have the Solana CLI installed and are comfortable running CLI commands.

1. Make the script executable and run it:

```bash
cd day-11-db-vs-account
chmod +x script.sh
./script.sh
```

2. What the script does (step-by-step):

- `solana config set --url https://api.devnet.solana.com` — point CLI to Devnet.
- `solana airdrop 2` — request 2 SOL to the default local keypair for quick testing.
- `solana account $(solana address)` — show account info for your wallet address.
- `solana account TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA` — inspect the Token program account (example with steady activity).
- `solana rent 0|100|1000` — explore rent calculation for different data sizes (0, 100, 1000 bytes).

Notes: the `solana airdrop` command may fail if Devnet has rate limits; re-run after a short delay if needed.

---

## Key Takeaways

- Storage on Solana is explicit and metered — you provision accounts and pay for the bytes you store.
- Programs and apps must design around account ownership, rent, and the fact that data is public by default.
- For production, consider rent-exemption, account size planning, and on-chain vs off-chain trade-offs.

---

## Links & Resources

- MLH Day 11 Challenge: https://www.mlh.com/challenges/019dddb6-fcb4-4f2d-25db-9eae6bc8de9a
- My quick CLI script: `script.sh` (this folder)
- My thread on X: https://x.com/BhattDenil/status/2050790421115400390
- Solana Docs — Accounts: https://solana.com/docs/core/accounts
- Solana Docs — Rent & Fees: https://docs.solana.com/implemented-proposals/rent

---

<div align="center">
	<i>✨ This documents my Day 11 work: exploring Solana accounts vs databases. ✨</i>
</div>
