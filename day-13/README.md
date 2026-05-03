<div align="center">
	<img src="https://mlhusercontent.com/backgrounds/challenges/019de7e1-c150-fc85-4f0c-ef8968ce3616.jpg?t=1777640000" width="60%" alt="Solana Challenge Banner" />
    <h1>🧭 Day 13: The Mental Model Shift — Accounts & Storage</h1>
    <p><i>MLH 100 Days of Solana Challenge — Reflecting on accounts, rent, and storage design</i></p>

</div>

---

## 📝 Overview

Day 13 was a reflective write-up about the mental model shift required when moving from Web2 to Solana. I explored how storage becomes a first-class design decision on Solana, why every data model is an account, and how rent and transparency change architectural trade-offs.

I published the full post on DEV: https://dev.to/denilbhatt/ive-been-building-on-sand-solana-builds-on-bedrock-fa9

---

## Key Concepts

- **The Mental Model Shift** — In Web2 storage is mostly invisible; in Solana you must design for storage explicitly. Accounts are the primitive unit of state.
- **The Account Model** — Everything is an account: wallets, programs, token mints, and application state. An account is a persistent data container identified by a public key.
- **The Rent System** — Storage costs are explicit: accounts require a refundable deposit proportional to bytes stored (rent-exemption applies). This forces economic trade-offs in how you store data on-chain.
- **Web2 vs Web3** — Web2 treats storage as an implementation detail; Web3 (Solana) treats storage as a first-class, monetized resource.

---

## What I Built / Published

- A written reflection that synthesizes my Week 1 learning and helps clarify the account model for other developers.
- Published post: **"I've been building on sand — Solana builds on bedrock"** on DEV: https://dev.to/denilbhatt/ive-been-building-on-sand-solana-builds-on-bedrock-fa9

---

## Highlights from the write-up

- Storage on Solana is explicit and metered — you pay per byte stored, not per query.
- Access control is enforced at the runtime/program level; applications must design around signers and program ownership.
- Transparency is the default: account data is publicly readable, so sensitive data should not be stored on-chain in plaintext.
- It's ok to admit uncertainty — concepts like Transactions, Instructions, and Programs can remain abstract at first; writing helps clarify them.

---

## Resources

- MLH Day 13 Challenge: https://www.mlh.com/challenges/019de7e1-c150-fc85-4f0c-ef8968ce3616
- My DEV post: https://dev.to/denilbhatt/ive-been-building-on-sand-solana-builds-on-bedrock-fa9
- Solana Docs — Accounts: https://solana.com/docs/core/accounts
- Solana Docs — Rent & Fees: https://docs.solana.com/implemented-proposals/rent

---

<div align="center">
	<i>✨ This documents my Day 13 reflection and write-up on Solana's account model. ✨</i>
</div>
