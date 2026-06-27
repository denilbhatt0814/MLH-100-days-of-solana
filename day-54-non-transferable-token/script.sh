spl-token create-token --program-2022 --enable-non-transferable
# Creating token 9oA6wGht3LXsUHbHN4onxi2msZztD5HJMy2FNDfG2KVe under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb

# Address:  9oA6wGht3LXsUHbHN4onxi2msZztD5HJMy2FNDfG2KVe
# Decimals:  9

# Signature: F2RiqqLc1SwCQndJPHULppm5krNy2FtvsM2FDdg1dS1hMVWBm3hXC21SD9jDpCuXCqB3Fi6ru3n4Qhdrk3965ax

export MINT=9oA6wGht3LXsUHbHN4onxi2msZztD5HJMy2FNDfG2KVe

spl-token create-account $MINT
# Creating account 38WYruQkmbabqJwnvQdaTxBtBYxzEWhujotWh54h5ftd

# Signature: 41tyFBypZjdnZSSNHcVb9SwTVfQTJVkXuYgQFbNTaWBxLRHuXF96wi4EwKuMJSPAaBVcNxh8Wg8NyVdEot1tJqfE

spl-token mint $MINT 1
# Minting 1 tokens
#   Token: 9oA6wGht3LXsUHbHN4onxi2msZztD5HJMy2FNDfG2KVe
#   Recipient: 38WYruQkmbabqJwnvQdaTxBtBYxzEWhujotWh54h5ftd

# Signature: vcVTjaRdAQcpufuffFmumiGkKbqEYjGapKcAsNkYFsmUgDY7AuPzZgga72B5S5euj1HWe8ZRAA2NtU84aNtrPvs

spl-token mint $MINT 1
export RECIPIENT=$(solana address -k /tmp/tmp-wallet.json)

spl-token create-account $MINT --owner $RECIPIENT --fee-payer ~/.config/solana/id.json
# Creating account AN9MoFEHatjkFx2RHeUCpC8XBCw2rA44pu4CJdH29wqo
# Signature: 4PGbywu5vDPcawBRbqH8mFSjF4uNSYi7NJNSXny1xkXgaYz5jCyCKTobGRVLYihDhkmR7nNzpenz8AhZfvjqTifX

spl-token transfer $MINT 1 $RECIPIENT --allow-unfunded-recipient
# Transfer 1 tokens
#   Sender: 38WYruQkmbabqJwnvQdaTxBtBYxzEWhujotWh54h5ftd
#   Recipient: 8wp78om5NAmVAXcBCmb34aNeuHYMZxgg7Gn5yiaaGVfr
#   Recipient associated token account: AN9MoFEHatjkFx2RHeUCpC8XBCw2rA44pu4CJdH29wqo
# Error: Client(Error { request: Some(SendTransaction), kind: RpcError(RpcResponseError { code: -32002, message: "Transaction simulation failed: Error processing Instruction 0: custom program error: 0x25", data: SendTransactionPreflightFailure(RpcSimulateTransactionResult { err: Some(UiTransactionError(InstructionError(0, Custom(37)))), logs: Some(["Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]", "Program log: Instruction: TransferChecked", "Program log: Transfer is disabled for this mint", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 1570 of 1570 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb failed: custom program error: 0x25"]), accounts: None, units_consumed: Some(1570), loaded_accounts_data_size: Some(712077), return_data: None, inner_instructions: None, replacement_blockhash: None, fee: Some(5000), pre_balances: None, post_balances: None, pre_token_balances: None, post_token_balances: None, loaded_addresses: None }) }) })

spl-token display $MINT
# SPL Token Mint
#   Address: 9oA6wGht3LXsUHbHN4onxi2msZztD5HJMy2FNDfG2KVe
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1000000000
#   Decimals: 9
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Non-transferable