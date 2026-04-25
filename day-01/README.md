<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019daa0b-8aaa-b52d-6765-3cb47e97e0ba.png?t=1776855200" width="60%" alt="Solana Challenge Banner" />
  
  <h1>🚀 Day 1: Generate a Solana Keypair & Get Devnet SOL 🌞</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Today, we dove into the world of Solana by creating our very first wallet (keypair) programmatically, funding it with Devnet SOL, and checking the balance. This is the first step toward building real on-chain applications. 🌐💸

---

## 🛠️ Steps Followed

1. <b>Project Setup</b> 🏗️
   - Initialized a new project folder for Day 1.
   - Installed <code>@solana/kit</code> for wallet and RPC utilities.
2. <b>Keypair Generation</b> 🔑
   - Used <code>generateKeyPairSigner()</code> from <code>@solana/kit</code> to create a new Solana keypair.
   - Printed the public address (safe to share) to the terminal.
3. <b>Funding the Wallet</b> 💰
   - Copied the generated address and visited <a href="https://faucet.solana.com/">Solana Faucet</a>.
   - Selected Devnet, pasted the address, and requested an airdrop of test SOL.
4. <b>Checking the Balance</b> 📊
   - Updated the script to use <code>createSolanaRpc</code> and <code>getBalance</code> to fetch and display the wallet's SOL balance.
   - <i>Note:</i> Each run generates a new keypair; to check a specific address, use the <code>address()</code> helper with the funded address.

---

## ✨ Key Takeaways

- <b>Solana Identity</b> 🪪: Your identity is a cryptographic keypair, not an email/password. The public key is your address; the private key proves your identity.
- <b>Local Generation</b> 🖥️: Keypairs are generated locally—no server or network call required.
- <b>Devnet SOL</b> 🧪: Test SOL from the faucet has no real value and is used for development.
- <b>Ephemeral Keys</b> 🕶️: The private key in this script lives only in memory. For persistence, key management is needed (covered in later days).

---

## 🔗 Resources

- 🌊 [Solana Faucet](https://faucet.solana.com/)
- 📚 [Kit Signers Guide](https://solanakit.com/docs/concepts/signers)
- 🗝️ [Solana Keypairs and Wallets](https://solanacookbook.com/references/keypairs-and-wallets.html#how-to-generate-a-new-keypair)
- 🏆 [MLH Challenge Page](https://www.mlh.com/challenges/019daa0b-8aaa-b52d-6765-3cb47e97e0ba/)

---

<div align="center">
  <i>✨ This summary documents the process and learnings from Day 1 of the MLH 100 Days of Solana challenge. ✨</i>
</div>
