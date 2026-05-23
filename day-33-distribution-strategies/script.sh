spl-token create-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb --enable-non-transferable
# Creating token TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb

# Address:  TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu
# Decimals:  9

# Signature: 4YeeoqGNHt7duwhXiNrDQt84QFQkpjpDhUj3zwWUBuqiJChS4QdPbQr1aNVzLqHbULByVPDR9VBPU6D7fFz5uUyC

spl-token create-account TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu
# Creating account mdX1gaSWCnQbceuFp6cMRRNcWgN8FAcAdZiGBuzo13B

# Signature: 69ZecR6SWbgXfYW1HLYtZNGJcnaVEwWkKPq71Xw5QV5PbBtCnH97PhzLQh9XPT7pP8WKgus8cQK4ZVnoWnHijne

spl-token mint TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu 10
# Minting 10 tokens
#   Token: TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu
#   Recipient: mdX1gaSWCnQbceuFp6cMRRNcWgN8FAcAdZiGBuzo13B

# Signature: 36aFJKAtB8FPMKDcfKhrgJXiiEe1zHxaku3eyxQ3grLnMB5SVZvx8D3vvmpQr8gFHD67NbxRUmn9MKKbaL9Kmuit

spl-token balance TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu
# 10

spl-token create-account TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu --owner $(solana address -k /tmp/temp-wallet.json) --fee-payer ~/.config/solana/id.json 
# Creating account 9KNFh6GbaenW4mb8DhVT75ho2wn3KtEACJKz7nmM2NJw

# Signature: 4vTyLhmHWgsHXTmWJLxTfEVU88oGHCZLZ3MpifjjirH3KGEze8KUaqg33f1WzQ9kUL2r2pwaXSsQRGNzHiUhKLyy

spl-token transfer TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu 5 $(solana address -k /tmp/temp-wallet.json) --allow-unfunded-recipient
# Transfer 5 tokens
#   Sender: mdX1gaSWCnQbceuFp6cMRRNcWgN8FAcAdZiGBuzo13B
#   Recipient: 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug
#   Recipient associated token account: 9KNFh6GbaenW4mb8DhVT75ho2wn3KtEACJKz7nmM2NJw
# Error: Client(Error { request: Some(SendTransaction), kind: RpcError(RpcResponseError { code: -32002, message: "Transaction simulation failed: Error processing Instruction 0: custom program error: 0x25", data: SendTransactionPreflightFailure(RpcSimulateTransactionResult { err: Some(InstructionError(0, Custom(37))), logs: Some(["Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]", "Program log: Instruction: TransferChecked", "Program log: Transfer is disabled for this mint", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 1570 of 1570 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb failed: custom program error: 0x25"]), accounts: None, units_consumed: Some(1570), return_data: None, inner_instructions: None }) }) })

spl-token burn mdX1gaSWCnQbceuFp6cMRRNcWgN8FAcAdZiGBuzo13B 3
# Burn 3 tokens
#   Source: mdX1gaSWCnQbceuFp6cMRRNcWgN8FAcAdZiGBuzo13B

# Signature: 4peCq2XqXK6GrhYCebrskR79SDXiY8qQcqPu23jgPwiZNkbiYT6duUJxGC47dnwXy2Vwd1YuSrbVLetjk8BGySZS

spl-token balance TgqtPTKWuq9E9gRfAAx8EkuVgof9QpcJn35Yb7EJCdu  
# 7