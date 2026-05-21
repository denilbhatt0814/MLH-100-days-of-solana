import {
  createSolanaRpc,
  address,
  getBase64Encoder,
  getBase16Decoder,
} from "@solana/kit";
import { getBase58Decoder } from "@solana/kit";

const rpc = createSolanaRpc("https://api.mainnet-beta.solana.com");

// Wrapped SOL mint address
const mintAddress = address("So11111111111111111111111111111111111111112");

const { value: accountInfo } = await rpc
  .getAccountInfo(mintAddress, { encoding: "base64" })
  .send();

// `data` arrives as a [base64String, "base64"] tuple.
// Converting the string back into the raw 82 bytes.
const dataBytes = getBase64Encoder().encode(accountInfo.data[0]);

console.log("Owner program:", accountInfo.owner);
console.log("Data length:", dataBytes.length, "bytes");
console.log("Raw data (hex):", getBase16Decoder().decode(dataBytes));

console.log("\n--- Manual Parsing of Account Data ---");

// DataView lets you read multi-byte values from a Uint8Array.
// The Token Mint account stores u32 and u64 values, so reading one byte at a time
// is not enough.
const view = new DataView(
  dataBytes.buffer,
  dataBytes.byteOffset,
  dataBytes.byteLength,
);

const base58Decoder = getBase58Decoder();

const hasMintAuthority = view.getUint32(0, true) === 1;
console.log("Has Mint Authority:", hasMintAuthority);

// if mint authority exists
if (hasMintAuthority) {
  // extract the 32 bytes of the mint authority address
  const authorityBytes = dataBytes.slice(4, 36);
  const authorityAddress = base58Decoder.decode(authorityBytes);
  console.log("Mint Authority:", authorityAddress);
}

const supply = view.getBigUint64(36, true);
console.log("Supply (raw):", supply.toString());

const decimals = view.getUint8(44);
console.log("Decimals:", decimals);

console.log("Supply (Human-readable):", Number(supply) / 10 ** decimals);

const isInitialized = view.getUint32(45, true) === 1;
console.log("Is Initialized:", isInitialized);
