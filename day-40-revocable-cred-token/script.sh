spl-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb create-token \
  --decimals 0 \
  --enable-non-transferable \
  --enable-permanent-delegate \
  --enable-metadata
# Creating token GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.

# Address:  GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
# Decimals:  0

# Signature: 5a4MNaFpokqVVpR9fFM19H24jsqo4ay4vNHKkHhyWtM6XJHCGJYAkN5mhyGrbu2j4NH9Nku2JpZjhPsdDzSE9Cv

spl-token initialize-metadata GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a \
  "Solana Dev Credential" \
  "CRED" \
  "https://example.com/credential.json"

#   Signature: 4BuX5UKrS7K1Skoh76G2S4fcjK5pRqyZQBPw4YaCsj9uQ7iRFdshnP8sCkB2vDFzXNgRfKpzGfGhqqxuZBUP8Cxq

RECIPIENT=$(solana address -k /tmp/temp-wallet.json)

spl-token create-account GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a --owner $RECIPIENT \
  --fee-payer ~/.config/solana/id.json
# Signature: 2kPTJKrjZrAVbbjCNyM6iUyTVfd5ZQ2WoqDXLBn9iVH68hhikEHXuyBSnK9otNpBdoxa9Q6JyHMp8GNo1ZXpmpNa

spl-token mint GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a 1 --recipient-owner $RECIPIENT
# Minting 1 tokens
#   Token: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Recipient: 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57

# Signature: 5m51ggvLbkLbj4d2nCSbtH6F5qdJ1mVfHKVwp4L5rf1sGDwGddwRwiiv2zsFo22EmwKJ1aCVNUNRLQhixUKwcUyn

THIRD_PARTY=$(solana address -k /tmp/third-party.json)

spl-token transfer GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a 1 $THIRD_PARTY \
  --owner /tmp/temp-wallet.json \
  --fee-payer ~/.config/solana/id.json \
  --fund-recipient --allow-unfunded-recipient
# Transfer 1 tokens
#   Sender: 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57
#   Recipient: 2dBwfkaC7uc34xawtVnjDbijnMw6giiMJi1M1FCS7HoK
#   Recipient associated token account: 7Gb8pJrXrBbcDE16fcn1sQ2KLmakVjgh25AbUwnhkUe9
#   Funding recipient: 7Gb8pJrXrBbcDE16fcn1sQ2KLmakVjgh25AbUwnhkUe9
# Error: Client(Error { request: Some(SendTransaction), kind: RpcError(RpcResponseError { code: -32002, message: "Transaction simulation failed: Error processing Instruction 1: custom program error: 0x25", data: SendTransactionPreflightFailure(RpcSimulateTransactionResult { err: Some(UiTransactionError(InstructionError(1, Custom(37)))), logs: Some(["Program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL invoke [1]", "Program log: CreateIdempotent", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [2]", "Program log: Instruction: GetAccountDataSize", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 1681 of 14601 compute units", "Program return: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb rgAAAAAAAAA=", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success", "Program 11111111111111111111111111111111 invoke [2]", "Program 11111111111111111111111111111111 success", "Program log: Initialize the associated token account", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [2]", "Program log: Instruction: InitializeImmutableOwner", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 736 of 8098 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [2]", "Program log: Instruction: InitializeAccount3", "Program log: Warning: Mint has a permanent delegate, so tokens in this account may be seized at any time", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 3150 of 5025 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success", "Program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL consumed 18372 of 19943 compute units", "Program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL success", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]", "Program log: Instruction: TransferChecked", "Program log: Transfer is disabled for this mint", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 1571 of 1571 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb failed: custom program error: 0x25"]), accounts: None, units_consumed: Some(19943), loaded_accounts_data_size: Some(817261), return_data: None, inner_instructions: None, replacement_blockhash: None, fee: Some(10000), pre_balances: None, post_balances: None, pre_token_balances: None, post_token_balances: None, loaded_addresses: None }) }) }

spl-token burn 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57 1 --owner ~/.config/solana/id.json
# Burn 1 tokens
#   Source: 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57

# Signature: 2E48qGhn3388SLbAy8UyBZYJh8reeYdHCtGvtqMHBMqwTSP4bFJkySj6jbxfQMZAc3dhksWgdB1MLXGoqfJj7q7u

spl-token balance GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a --owner $RECIPIENT
# 0

spl-token display GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
# SPL Token Mint
#   Address: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 0
#   Decimals: 0
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Permanent delegate: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Non-transferable
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#     Name: Solana Dev Credential
#     Symbol: CRED
#     URI: https://example.com/credential.json

# Mint a second credential to the same recipient and then burn only one. Does the balance update correctly?
spl-token mint GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a 1 --recipient-owner $RECIPIENT
# Minting 1 tokens
#   Token: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Recipient: 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57

# Signature: H2CWLJbKxGewoRvMtAaBP2rMgeUPbHj1dpGzRpKQHeTmmix98wrR9Yq2M5a6EiWrFB5jZ2HWFqGieXninukZMFX

spl-token balance GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a --owner $RECIPIENT
# 1

spl-token burn 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57 1 --owner ~/.config/solana/id.json
# Burn 1 tokens
#   Source: 3Sf9PkbStrLyZAaSx1FYvMmkhfxuZGsofZPGNMP1uL57

# Signature: 52bnha8Ez5VD3Q6YaKiBVMC1S3j4EpE53Vw2Q3sd3ruzqSuQGmcrTd7r7nXNJWhvBgJyrvon56YgRhWwKteyAKti

spl-token balance GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a --owner $RECIPIENT
# 0

# Attempt to use spl-token authorize to change the permanent delegate. What happens? Can it be reassigned?

pl-token authorize GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a permanent-delegate $THIRD_PARTY
# Updating GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Current permanent-delegate: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   New permanent-delegate: 2dBwfkaC7uc34xawtVnjDbijnMw6giiMJi1M1FCS7HoK

# Signature: 3XjsWanpfMYP22ft5nLgeBUDQR1pJ3TPZ3XmvW1oF28RKJp2ckCZMH6SfnVbfXF288QwjptPj3GH7ADsFhJSmDUi

# Add a custom metadata field using spl-token update-metadata to store an “issued_date” or “expiry_date” value on the mint
spl-token update-metadata GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a  
issued_date "2026-05-31"
# Signature: 2EiHLqXaTpaNxbZs7rG9RKhtcpTwB7RbGa9obCHexUMtSmFnrQUXrno2Eo1zRQdR9WASaC1zV3GwWJrXm8ATHQQQ

spl-token display GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
# SPL Token Mint
#   Address: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 0
#   Decimals: 0
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Permanent delegate: 2dBwfkaC7uc34xawtVnjDbijnMw6giiMJi1M1FCS7HoK
#   Non-transferable
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: GYXUUbGSqm7pDkH8vZMyaWbX6ocGxYvCRQvwzCUmYP3a
#     Name: Solana Dev Credential
#     Symbol: CRED
#     URI: https://example.com/credential.json
#     issued_date: 2026-05-31