<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019db996-d670-c609-b3d6-5bb3fb0eeb00.jpg?t=1776946437" width="60%" alt="Solana Challenge Banner" />
  
  <h1>🚀 Day 4: Connect a Browser Wallet 🌐</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 📝 Overview

Day 4 transitions from backend wallet management to real user experience by building a web app that connects to browser wallets like Phantom or Solflare. Instead of handling private keys directly, the app discovers installed wallets, lets users connect, and displays their Solana address and devnet balance securely. This is a foundational step for building real-world dApps on Solana.

---

## 🛠️ Steps Followed

1. **Project Initialization** 🏗️
   - Created a new Vite project for a browser-based app.
   - Installed dependencies: `@solana/kit` and `@wallet-standard/app`.

2. **Wallet Discovery & UI** 🔍
   - Used `getWallets()` from `@wallet-standard/app` to detect installed browser wallets.
   - Rendered a list of available Solana wallets with icons and names.

3. **Wallet Connection Flow** 🔑
   - On wallet selection, requested connection using the Wallet Standard API.
   - Displayed the connected wallet's public address and fetched the SOL balance from devnet using `@solana/kit`.
   - Provided a disconnect button to allow users to safely disconnect their wallet.

4. **UX & Error Handling** 🎨
   - Handled cases where no wallet is installed, or the user rejects the connection.
   - Updated UI dynamically based on connection state.

5. **Deployment** 🚀
   - Deployed the app live to Vercel: [https://day-04-wallet.vercel.app/](https://day-04-wallet.vercel.app/)

---

## ✨ Key Takeaways

- **No Private Key Exposure**: The app never sees or stores private keys; all signing and approval is handled by the wallet extension.
- **Wallet Standard**: Using the open Wallet Standard protocol ensures compatibility with any current or future Solana wallets.
- **User-Centric Security**: Users approve all connections and transactions, keeping control of their assets.
- **Modern dApp Pattern**: This approach mirrors "Sign in with Google" for crypto wallets, delegating authentication and signing to trusted providers.
- **Live Deployment**: Vercel makes it easy to share and test the app publicly.

---

## 🔗 Resources

- 🌐 [Challenge Page](https://www.mlh.com/challenges/019db996-d670-c609-b3d6-5bb3fb0eeb00)
- 🦄 [Solana Wallets](https://solana.com/wallets)
- 📚 [Solana Kit Docs](https://www.solanakit.com/docs)
- 🦊 [Phantom Docs](https://docs.phantom.com/introduction)
- 💻 [Live Demo](https://day-04-wallet.vercel.app/)

---

<div align="center">
  <i>✨ This summary documents the process and learnings from Day 4 of the MLH 100 Days of Solana challenge. ✨</i>
</div>
