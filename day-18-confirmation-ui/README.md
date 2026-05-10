<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019e01da-af0c-6ced-c422-401d103fe199.jpg?t=1778148001" width="60%" alt="Add transaction confirmation UI" />
  <h1>🔔 Day 18: Add transaction confirmation UI</h1>
  <p><i>MLH 100 Days of Solana Challenge — make transfer progress visible (processed → confirmed → finalized)</i></p>
</div>

---

## 📝 Overview

Today I upgraded the transfer CLI so it shows live confirmation progress. Instead of a single `sendAndConfirm` call that returns once confirmed, the tool now sends the signed transaction and polls `getSignatureStatuses` to report status as the transaction moves through `processed`, `confirmed`, and `finalized` commitment levels. This gives real-time feedback and clearer error handling.

---

## 🛠️ What I built

- `transfer.mjs` — CLI entry point that wires the new confirmation flow into `main()`.
- `transactionlogic.mjs` — reusable `transferWithConfirmation(rpc, signer, to, amount)` helper that:
  - builds and signs the transaction message,
  - sends the base64-encoded wire transaction via `rpc.sendTransaction`,
  - polls `getSignatureStatuses` for `confirmed` and `finalized`, and
  - prints status updates inline using a terminal status helper.

Both files use `@solana/kit` primitives (versioned messages, signers, lamports helpers) and target Devnet.

---

## 🛠️ Run locally

Requirements: Node.js v18+, `solana` CLI configured with a funded devnet keypair (`~/.config/solana/id.json`).

1. Install dependencies

```bash
cd day-18-confirmation-ui
npm install
```

2. Usage

```bash
node transfer.mjs <RECIPIENT_PUBLIC_KEY> <AMOUNT_IN_SOL>
# Example:
node transfer.mjs $(solana address -k ~/recipient-keypair.json) 0.01
```

3. Watch the terminal. The tool updates a single status line as the transaction progresses from `processed` → `confirmed` → `finalized`.

---

## 🔍 Implementation notes

- `getBase64EncodedWireTransaction` converts the signed transaction into a base64 string that can be passed to `rpc.sendTransaction()` directly.
- `waitForCommitment` polls `getSignatureStatuses([signature])` until the desired commitment level is reached; it throws if the RPC reports an on-chain error for the transaction.
- `statusUpdate(message)` uses `process.stdout.clearLine(0)` and `cursorTo(0)` to overwrite the current line for a compact progress display.
- The confirmation helper returns the signature string so the caller can print a Solana Explorer link.

---

## ✅ Example output

```
Solana Transfer Tool
====================
Connected to Solana Devnet.

Sender: <SENDER_PUBKEY>
Recipient: <RECIPIENT_PUBKEY>
Amount (SOL): 0.01

Sender Balance: 2.8990 SOL

Sending 0.01 SOL to <RECIPIENT_PUBKEY>...
Status: Sending transaction...
Status: Processed (included in a block)...
Status: Confirmed (supermajority voted)...
Status: Finalized (irreversible)!

Transaction confirmed!
Signature: 5Uh3...abc
View on Solana Explorer: https://explorer.solana.com/tx/5Uh3...abc?cluster=devnet

Updated Sender Balance: 2.8989 SOL
```

---

## 📹 Demo

- Recorded clip of the tool running with live confirmation updates: [20260509-1651-35.9627994.mp4](day-18-confirmation-ui/PoW/20260509-1651-35.9627994.mp4)

You can play the file in the browser on GitHub (click the link) or locally with a media player. If you prefer inline playback, supported renderers will show it below:

<video src="day-18-confirmation-ui/PoW/20260509-1651-35.9627994.mp4" controls style="max-width:100%;height:auto"></video>

---

## 🔗 Resources

- MLH Challenge: Add transaction confirmation UI — https://www.mlh.com/events/100-days-of-solana/challenges/019e01da-af0c-6ced-c422-401d103fe199
- Solana Docs: Transaction confirmation and commitments — https://solana.com/developers/guides/advanced/confirmation
- getSignatureStatuses RPC method — https://solana.com/docs/rpc/http#getsignaturestatuses
- Solana Explorer (Devnet) — https://explorer.solana.com/?cluster=devnet

---

## 💭 Reflection

Making confirmation stages visible turns an opaque operation into a trustworthy user flow. Wallets and marketplaces use the same pattern to decide when to update UI or mark a payment as final — the polling + status-reporting approach is simple, reliable, and easy to reuse in both CLI tools and small UIs.

---

<div align="center">
	<i>✨ This documents my Day 18 work: stages of transaction ✨</i>
</div>
