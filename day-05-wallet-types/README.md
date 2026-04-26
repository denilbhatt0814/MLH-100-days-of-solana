<div align="center">
  <img src="https://mlhusercontent.com/backgrounds/challenges/019dbeae-700d-7f32-5456-99fd11f92b4d.jpg?t=1777021213" width="60%" alt="Solana Challenge Banner" />
  
  <h1>🚀 Day 5: Connect a Browser Wallet 🌐</h1>
  <p><i>MLH 100 Days of Solana Challenge</i></p>
</div>

---

## 🔬 The Experiment

Today's challenge was to get hands-on with three different wallet types — CLI, browser extension, and mobile — and compare the tradeoffs between them. I already had the CLI wallet set up from a previous challenge, so this was mostly about putting all three side by side and actually feeling the difference.

---

## >_ CLI Wallet

The CLI wallet was the fastest to set up — honestly, it's a single command:

```bash
solana-keygen new     # creates your wallet
solana address        # your public key, right there
```

Done. Fresh hot wallet ready 💰, seed phrase included. For a techie, it really doesn't get faster than this.

But fast doesn't mean safe. The key literally just lives in plain text at `~/.config/solana/id.json` 🙃 — no password prompt, no confirmation dialog, nothing. Any software on your machine could theoretically read that file 👀. And if your disk dies or you accidentally `rm -rf` the wrong thing? You're relying entirely on whether you saved that seed phrase somewhere (please make sure to note down your seed phrases, ALWAYSS):

```bash
solana-keygen recover -o ~/.config/solana/id.json # for recovery
```

It works, but it's a bit nerve-wracking to think about.

---

## 🌐 Browser Extension Wallet

Setting up a browser wallet (Phantom) — the flow was pretty straightforward: install the extension, set a password, save the seed phrase. Done. 😉

The big upgrade here over CLI is that the password actually encrypts the key at rest in the browser's storage 🔒 (likely `localStorage` or `IndexedDB`). Plus, every time a site wants to sign something, you get a popup — you see exactly what you're approving before you approve it. That confirmation layer is doing real work.

In my experience, this is the go-to for everyday on-chain interaction, and I can see why it's so widely adopted. The only place it starts to feel limiting is when you're in dev/testing mode and don't want to manually approve every single transaction 😥 — that's where the CLI still wins.

---

## 📱 Mobile Wallet

Opended up Playstore, installed Phantom on mobile and was surprised right at the start — it offered to "connect via Google account" 🤩 for recovery. Interesting. Beyond that, it made me set up an mPin and added biometric authentication (fingerprint/Face ID). Under the hood, it's using the OS-level secure storage 🔐 — iOS Keychain or Android Keystore — which isolates the keys from other apps and from standard user-accessible storage.

This honestly felt the most secure of the three 💪, and the recovery flow felt the most thought-through as well.

One thing I'm still fuzzy on is how smooth is the dApp interaction experience on mobile? With browser wallets, you just get the extension popup whenever a site wants to do something. On mobile, does that same flow work seamlessly? I guess I'm missing something about how the mobile ecosystem handles this.

---

## The Questionnaire

1. **Which wallet was fastest to set up?** 🏎️💨
CLI, anyday — if you're a developer. But then for general public though? Mobile wins, no doubt there.

2. **Which felt safest?** 🦺
I'll say Mobile. Biometric auth + mPin + hardware-backed secure storage is a tough combo to beat.

3. **Where is the private key stored in each case?** 💾
    - **CLI** → `~/.config/solana/id.json` — plain text on disk
    - **Browser wallet** → encrypted in browser storage (`localStorage` / `IndexedDB`)
    - **Mobile wallet** → OS secure vault (iOS Keychain / Android Keystore), isolated from other apps

4. **If your laptop caught fire right now, which wallets could you recover?** 💻🔥
Browser wallet — because I wrote down the seed phrase during setup 🤓. CLI is a maybe, depending on whether I had that seed phrase somewhere safe (lesson learned: "always write it down"). 

5. **If you needed to sign 500 test transactions in a script?** ✒️
CLI, for sure. I cannot imagine hitting "Approve" on 500 browser popups. That's a big no no 🙅‍♂️.

6. **If you were holding $10,000 in SOL?** 🤑
Mobile wallet feels the safest of these three — but honestly, at that value, I'd seriously look into a hardware wallet 😅 like Ledger. Keeping that much value in a hot wallet of any kind feels like tempting fate. 

---

## 📝 What I Took Away

All three wallets are doing the same fundamental thing — managing a keypair — but *where* and *how* they store it changes everything about the security model.

The CLI is your best friend for development and scripting. The browser extension is the right default for everyday on-chain interaction — that approval popup is a feature, not an annoyance. The mobile wallet is the most polished for personal use, with the best native security integrations.

The real insight from today: there's no single "best" wallet. The right choice depends entirely on what you're doing — testing, transacting, or storing value long term. Most Solana devs end up using more than one, and now I see exactly why.

---

<div align="center">
  <i>✨ This summary documents the process and learnings from Day 5 of the MLH 100 Days of Solana challenge. ✨</i>
</div>
