spl-token create-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb --transfer-fee 100 5000                                            
# Creating token Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb

# Address:  Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4
# Decimals:  9

# Signature: 3uRjzqUe7h9B56jdJQyhGiPDEGrjeuecLGUGVZQJWcaRjgTvVUFA1LxiEVBdCCfhh2vgsrbAgmysR8YJy2mTMA6T

spl-token create-account Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4
# Creating account D66GQ4Xo8yXAMJ38rgcgRHQ2RUvBoZVXzHo5eD9gkLdr

# Signature: 3ghXtJPJpZjBgNz9dzmi95Ma3v6exFJ6PTAnUxjjEFdL7stLUMXc1yqEFc8YfAnVB7P2mqcEHDyS7vf8CyvBgrfw

spl-token mint Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 1000
# Minting 1000 tokens
#   Token: Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4
#   Recipient: D66GQ4Xo8yXAMJ38rgcgRHQ2RUvBoZVXzHo5eD9gkLdr

# Signature: PeyRoHCwdnmucWnAdssUiJVfA4vnNW3shRYMwPLYQrhYDV354KUmwKBikStNj2PU4tpgLnqrJ9hTJCVaxaevAi5

spl-token create-account Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 --owner $(solana address -k /tmp/temp-wallet.json) --fee-payer ~/.config/solana/id.json 
# Creating account 3sqot1wjLMqwNB93Swmk4J5k59NgWx3sEd4Q9SuoZp9V

# Signature: fbzHnXva6HcYWbEAJK3BWP8EVp2jxLwK9ycWepx2bjQVst9yF3SK5dyrkKHSBbdKnyvB5XciK3QXiAGb9T64sqK

spl-token create-account Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 --owner $(solana address -k /tmp/temp-wallet.json) --fee-payer ~/.config/solana/id.json 
# Creating account 3sqot1wjLMqwNB93Swmk4J5k59NgWx3sEd4Q9SuoZp9V

# Signature: fbzHnXva6HcYWbEAJK3BWP8EVp2jxLwK9ycWepx2bjQVst9yF3SK5dyrkKHSBbdKnyvB5XciK3QXiAGb9T64sqK

spl-token transfer Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 100 $(solana address -k /tmp/temp-wallet.json) --expected-fee 1
# Transfer 100 tokens
#   Sender: D66GQ4Xo8yXAMJ38rgcgRHQ2RUvBoZVXzHo5eD9gkLdr
#   Recipient: 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug
#   Recipient associated token account: 3sqot1wjLMqwNB93Swmk4J5k59NgWx3sEd4Q9SuoZp9V
# Error: Client(Error { request: Some(SendTransaction), kind: RpcError(RpcResponseError { code: -32002, message: "Transaction simulation failed: Error processing Instruction 0: custom program error: 0x20", data: SendTransactionPreflightFailure(RpcSimulateTransactionResult { err: Some(InstructionError(0, Custom(32))), logs: Some(["Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]", "Program log: TransferFeeInstruction: TransferCheckedWithFee", "Program log: Calculated fee {calculated_fee}, received {fee}", "Program log: Calculated fee does not match expected fee", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 2767 of 2767 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb failed: custom program error: 0x20"]), accounts: None, units_consumed: Some(2767), return_data: None, inner_instructions: None }) }) })

spl-token transfer Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 100 $(solana address -k /tmp/temp-wallet.json)                 
# Transfer 100 tokens
#   Sender: D66GQ4Xo8yXAMJ38rgcgRHQ2RUvBoZVXzHo5eD9gkLdr
#   Recipient: 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug
#   Recipient associated token account: 3sqot1wjLMqwNB93Swmk4J5k59NgWx3sEd4Q9SuoZp9V

# Signature: 2sBgA6cwE6usDUPGT1WQdwdQFWXwUqtAJKH4hguiPxyrBKmFGsx1a8FoMSoZwKGTP4FRy6D6GfSWgS3PbDnygWrc

spl-token balance Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 
# 900

spl-token balance Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4 --owner $(solana address -k /tmp/temp-wallet.json)
# 99.999995

spl-token accounts Ccj4ReUspEk4w3pvvqhbo48SmD3f6YLFCPKdjhm4tSx4
# Balance
# -------
# 900

spl-token withdraw-withheld-tokens D66GQ4Xo8yXAMJ38rgcgRHQ2RUvBoZVXzHo5eD9gkLdr 3sqot1wjLMqwNB93Swmk4J5k59NgWx3sEd4Q9SuoZp9V
# Signature: 41rP3ETkfqGgByfWTqtaToBznM9h7517Q5dZh78jwRJTniSEFTL41JAZiR51muk4v8AezSB9ZrhPDXUrLoKKRexy

pl-token withdraw-withheld-tokens D66GQ4Xo8yXAMJ38rgcgRHQ2RUvBoZVXzHo5eD9gkLdr 3sqot1wjLMqwNB93Swmk4J5k59NgWx3sEd4Q9SuoZp9V
# Signature: 41rP3ETkfqGgByfWTqtaToBznM9h7517Q5dZh78jwRJTniSEFTL41JAZiR51muk4v8AezSB9ZrhPDXUrLoKKRexy