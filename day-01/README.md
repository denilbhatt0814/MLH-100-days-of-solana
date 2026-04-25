# Day 1: Generate a Solana Keypair and Get Devnet SOL

## Overview

For the MLH 100 Days of Solana challenge (Day 1), we created a Solana wallet (keypair) programmatically, funded it with test SOL from the Devnet faucet, and checked the balance. This is the foundational step for building on-chain applications on Solana.

## Steps Followed

1. **Project Setup**
   - Initialized a new project folder for Day 1.
   - Installed `@solana/kit` for wallet and RPC utilities.
2. **Keypair Generation**
   - Used `generateKeyPairSigner()` from `@solana/kit` to create a new Solana keypair.
   - Printed the public address (safe to share) to the terminal.
3. **Funding the Wallet**
   - Copied the generated address and visited [Solana Faucet](https://faucet.solana.com/).
   - Selected Devnet, pasted the address, and requested an airdrop of test SOL.
4. **Checking the Balance**
   - Updated the script to use `createSolanaRpc` and `getBalance` to fetch and display the wallet's SOL balance.
   - Noted: Each run generates a new keypair; to check a specific address, use the `address()` helper with the funded address.

## Key Takeaways

- **Solana Identity**: Your identity is a cryptographic keypair, not an email/password. The public key is your address; the private key proves your identity.
- **Local Generation**: Keypairs are generated locally—no server or network call required.
- **Devnet SOL**: Test SOL from the faucet has no real value and is used for development.
- **Ephemeral Keys**: The private key in this script lives only in memory. For persistence, key management is needed (covered in later days).

## Resources

- [Solana Faucet](https://faucet.solana.com/)
- [Kit Signers Guide](https://solanakit.com/docs/concepts/signers)
- [Solana Keypairs and Wallets](https://solanacookbook.com/references/keypairs-and-wallets.html#how-to-generate-a-new-keypair)
- [MLH Challenge Page](https://www.mlh.com/challenges/019daa0b-8aaa-b52d-6765-3cb47e97e0ba/)

---

_This summary documents the process and learnings from Day 1 of the MLH 100 Days of Solana challenge._
