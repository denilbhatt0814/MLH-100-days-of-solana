<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019df771-2eb8-957d-a0a3-23de7f655409.jpg?t=1777972883" width="60%" alt="Send your first SOL transfer" />
  <h1>💸 Day 16: Send your first SOL transfer</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Today’s challenge is hands-on: use the Solana CLI to send a deliberate SOL transfer on Devnet and verify it landed. This builds on yesterday’s transaction anatomy exercise by creating the transaction yourself from scratch.

---

## 🛠️ Steps Followed

1. **Point CLI to Devnet**
   - `solana config set -ud`
2. **Check balance and fund if needed**
   - `solana balance`
   - `solana airdrop 2`
3. **Create a recipient keypair**
   - `solana-keygen new --outfile ~/recipient-keypair.json --no-bip39-passphrase`
4. **Send the transfer**
   - `solana transfer 0.5 --allow-unfunded-recipient <RECIPIENT_PUBKEY>`
5. **Verify balances**
   - `solana balance` (sender)
   - `solana balance <RECIPIENT_PUBKEY>` (recipient)

---

## ✅ What to watch for

- `solana config set -ud` should show `RPC URL: https://api.devnet.solana.com` when you run `solana config get`.
- The `--allow-unfunded-recipient` flag lets the CLI create an account for a brand-new recipient address.
- After sending 0.5 SOL, expect the sender to have roughly `2 - 0.5 - fee` SOL and the recipient to show `0.5` SOL.
- Copy the printed transaction signature and view it on Solana Explorer (set cluster to Devnet) to inspect details.

---

## 🔗 Resources

- MLH Challenge: Send your first SOL transfer — https://www.mlh.com/events/100-days-of-solana/challenges/019df771-2eb8-957d-a0a3-23de7f655409
- Solana CLI docs — https://solana.com/docs/intro/installation
- Solana Explorer (Devnet) — https://explorer.solana.com/?cluster=devnet
- My Twitter Post 🐦 — https://x.com/BhattDenil/status/2053065311965040852

---

<div align="center">
	<i>✨ This documents my Day 16 making a SOL transfer via CLI</i>
</div>
