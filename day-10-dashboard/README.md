<div align="center">
	<img src="https://mlhusercontent.com/backgrounds/challenges/019dd88a-06f0-928e-6075-2035a6de9a35.jpg?t=1777541713" width="60%" alt="Solana Challenge Banner" />
    <h1>📊 Day 10: Devnet Dashboard</h1>
    <p><i>MLH 100 Days of Solana Challenge — Build a simple dashboard in the browser</i></p>

</div>

---

## 🔗 Live Demo

- Deployed: https://day-10-dashboard.vercel.app/

---

## 📝 Overview

This project moves the terminal-based data-fetching you built on Days 8 and 9 into a browser UI. The dashboard lets you enter any Solana devnet address, fetch its SOL balance, and display the 5 most recent transactions — all using `@solana/kit` and Devnet RPC.

---

## 🛠️ What I Built

- A small Vite-based frontend (vanilla JS) with a single page UI (`index.html` + `src/main.js`).
- Features: address input, Fetch button, balance display, recent transactions list, loading and error states.
- Uses `createSolanaRpc` and the same RPC calls as the terminal scripts: `getBalance` and `getSignaturesForAddress`.

---

## How it works (high-level)

1. User enters a devnet address and clicks **Fetch Data**.
2. The app calls `rpc.getBalance(address)` and `rpc.getSignaturesForAddress(address, { limit: 5 })`.
3. Results are rendered: balance (converted from lamports → SOL) and a list of the most recent transactions with signature, slot, timestamp, and status.

Key files:

- `index.html` — UI and layout
- `src/main.js` — fetch logic and rendering
- `package.json` — dev + build scripts

---

## Run locally

1. Install dependencies and start the dev server:

```bash
cd day-10-dashboard
npm install
npm run dev

# then open http://localhost:5173
```

2. Enter any Solana devnet address in the input and click **Fetch Data**.

---

## Notes & Best Practices

- The dashboard runs RPC calls from the browser — this is fine for Devnet but be cautious with rate limits and production RPC providers.
- Balances are returned in lamports; the app converts to SOL (1 SOL = 1_000_000_000 lamports).
- The UI handles missing `blockTime` values and displays `Unknown` where appropriate.
- In production, avoid exposing private keys or performing signing in the page — use wallet integrations for signing transactions.

---

## Key Takeaways

- Moving scripts to a browser UI makes data accessible to non-developers.
- The same `@solana/kit` API works in Node and the browser via Vite bundling.
- Simple, focused dashboards are a great way to explore and share on-chain data.

---

## Resources

- MLH Day 10 challenge: https://www.mlh.com/challenges/019dd88a-06f0-928e-6075-2035a6de9a35
- Solana Kit docs: https://www.solanakit.com/docs
- Solana Explorer (devnet): https://explorer.solana.com/?cluster=devnet

---

<div align="center">
	<i>✨ This documents my Day 10 work: a live Devnet dashboard (deployed). ✨</i>
</div>
