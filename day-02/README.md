<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019daf61-bc52-ce71-962d-041cc6c9863d.jpg?t=1776781880" width="60%" alt="Solana Challenge Banner" />
  
  <h1>🚀 Day 2: Persistent Wallet 🌞</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Day 2 builds on Day 1 by creating a persistent wallet that survives between script runs. Instead of generating a new keypair every time, we now save the wallet to a JSON file and reload it on subsequent runs. This is essential for real applications where you need to maintain the same wallet address. 🏦💾

---

## 🛠️ Steps Followed

1. <b>Project Setup</b> 🏗️
   - Used the existing Day 1 project with `@solana/kit` already installed.
   - Created a new file `persistent-wallet.mjs`.

2. <b>Wallet Persistence Logic</b> 💾
   - Implemented `loadOrCreateWallet()` function that:
     - Tries to load an existing wallet from `wallet.json`
     - Creates a new wallet if none exists
     - Saves the 64-byte keypair (32 private + 32 public) to JSON

3. <b>Keypair Export</b> 🔑
   - Used `generateKeyPair(true)` — the `true` parameter makes keys extractable
   - Exported public key in raw format
   - Exported private key in PKCS8 format (Node.js doesn't support raw Ed25519 private key export)
   - Extracted the last 32 bytes from PKCS8 for the actual secret key

4. <b>Wallet Loading</b> 📂
   - Used `createKeyPairSignerFromBytes()` to reconstruct the signer from saved bytes
   - This gives back the same `KeyPairSigner` object with the same address

5. <b>Balance Check</b> 📊
   - Used `getBalance()` to fetch the wallet's SOL balance
   - Displayed address and balance in SOL

---

## ✨ Key Takeaways

- <b>Persistent Storage</b> 💾: The wallet is saved to `wallet.json` with a 64-byte secret key (same format as Solana CLI).
- <b>Extractable Keys</b> 🔐: `generateKeyPair(true)` is required to export keys; without it, `crypto.subtle.exportKey` throws an error.
- <b>PKCS8 Format</b> 📦: Node.js doesn't support raw Ed25519 private key export, so PKCS8 is used—the actual key material is the last 32 bytes.
- <b>Security Note</b> ⚠️: In production, never store private keys in plain JSON files—use encrypted keystores or hardware wallets.
- <b>Reusable Wallet</b> ♻️: Fund once and use for the rest of the week's challenges without re-creating.

---

## 🔗 Resources

- 🏦 [Solana Faucet](https://faucet.solana.com/)
- 📚 [Kit Keypairs Guide](https://solanakit.com/docs/concepts/keypairs)
- 🗝️ [Kit Signers Guide](https://solanakit.com/docs/concepts/signers)
- 🏆 [MLH Challenge Page](https://www.mlh.com/challenges/019daf61-bc52-ce71-962d-041cc6c9863d/)

---

<div align="center">
  <i>✨ This summary documents the process and learnings from Day 2 of the MLH 100 Days of Solana challenge. ✨</i>
</div>
