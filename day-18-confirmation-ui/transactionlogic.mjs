import { getTransferSolInstruction } from "@solana-program/system";
import {
  address,
  createKeyPairSignerFromBytes,
  createSolanaRpc,
  createSolanaRpcSubscriptions,
  pipe,
  createTransactionMessage,
  setTransactionMessageFeePayerSigner,
  setTransactionMessageLifetimeUsingBlockhash,
  appendTransactionMessageInstruction,
  signTransactionMessageWithSigners,
  getSignatureFromTransaction,
  getBase64EncodedWireTransaction,
  lamports,
  devnet,
} from "@solana/kit";

const COMMITMENT_LEVELS = ["processed", "confirmed", "finalized"];

// --- Status Updater ---
function statusUpdate(message) {
  process.stdout.clearLine(0);
  process.stdout.cursorTo(0);
  process.stdout.write(message);
}

async function waitForCommitment(rpc, signature, targetCommitment) {
  // select commitment level
  const targetIndex = COMMITMENT_LEVELS.indexOf(targetCommitment);

  while (true) {
    const { value } = await rpc
      .getSignatureStatuses([signature], { searchTransactionHistory: true })
      .send();

    const status = value[0];

    if (status?.err) {
      throw new Error(
        `Transaction failed with error: ${JSON.stringify(status.err)}`,
      );
    }

    if (status) {
      const currentIndex = COMMITMENT_LEVELS.indexOf(status.confirmationStatus);
      if (currentIndex >= targetIndex) break;
    }

    await new Promise((resolve) => setTimeout(resolve, 500));
  }
}

export async function transferWithConfirmation(
  rpc,
  signer,
  toAddress,
  amountInSOL,
) {
  const destination = address(toAddress);
  const amountInLamports = lamports(BigInt(Math.round(amountInSOL * 1e9)));

  // 4. Building the transaction
  const { value: latestBlockhash } = await rpc.getLatestBlockhash().send();

  const transactionMessage = pipe(
    createTransactionMessage({ version: 0 }),
    (tx) => setTransactionMessageFeePayerSigner(signer, tx),
    (tx) => setTransactionMessageLifetimeUsingBlockhash(latestBlockhash, tx),
    (tx) =>
      appendTransactionMessageInstruction(
        getTransferSolInstruction({
          source: signer,
          destination,
          amount: amountInLamports,
        }),
        tx,
      ),
  );

  const signedTx = await signTransactionMessageWithSigners(transactionMessage);
  const signature = getSignatureFromTransaction(signedTx);
  const wireTransaction = getBase64EncodedWireTransaction(signedTx);

  console.log(`\nSending ${amountInSOL} SOL to ${toAddress}...\n`);

  // Step A: send the transaction
  statusUpdate("Status: Sending transaction...");
  await rpc.sendTransaction(wireTransaction, { encoding: "base64" }).send();

  statusUpdate("Status: Processed (inclueded in a block)...");

  // Step B: wait for confirmation
  await waitForCommitment(rpc, signature, "confirmed");
  statusUpdate("Status: Confirmed (supermajority voted)!\n");

  // Step C: wait for finalization
  await waitForCommitment(rpc, signature, "finalized");
  statusUpdate("Status: Finalized (irreversible)!\n");

  console.log("\n");

  return signature;
}
