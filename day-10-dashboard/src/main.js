import { address, createSolanaRpc, devnet } from "@solana/kit";

const rpc = createSolanaRpc(devnet("https://api.devnet.solana.com"));
const addressInput = document.getElementById("addressInput");
const fetchBtn = document.getElementById("fetchBtn");
const resultsDiv = document.getElementById("results");
const errorDiv = document.getElementById("error");
const loadingDiv = document.getElementById("loading");

fetchBtn.addEventListener("click", async () => {
  errorDiv.textContent = "";
  resultsDiv.innerHTML = "";
  loadingDiv.textContent = "Loading...";

  try {
    const targetAddress = address(addressInput.value.trim());

    // fetch balance
    const { value: balanceInLamports } = await rpc
      .getBalance(targetAddress)
      .send();
    const balanceInSol = Number(balanceInLamports) / 1e9;

    // fetch transactions
    const signatures = await rpc
      .getSignaturesForAddress(targetAddress, { limit: 5 })
      .send();

    // render results
    let html = `<div class="balance">Balance: ${balanceInSol.toFixed(4)} SOL</div>`;
    html += `<h3>Recent Transactions:</h3>`;

    if (signatures.length === 0) {
      html += `<p>No transactions found.</p>`;
    }

    for (const txn of signatures) {
      const time = txn.blockTime
        ? new Date(Number(txn.blockTime) * 1000).toLocaleString()
        : "Unknown";
      const statusClass = txn.err ? "status failed" : "status";
      const statusText = txn.err ? "Failed" : "Success";

      html += `
      <div class="tx">
          <div><strong>Signature:</strong> ${txn.signature}</div>
          <div><strong>Slot:</strong> ${txn.slot}</div>
          <div><strong>Time:</strong> ${time}</div>
          <div class="${statusClass}"><strong>Status:</strong> ${statusText}</div>
      </div>
      `;
    }

    resultsDiv.innerHTML = html;
  } catch (error) {
    errorDiv.textContent = `Error: ${error.message}`;
    console.log("Error fetching data:", error);
  } finally {
    loadingDiv.textContent = "";
  }
});
