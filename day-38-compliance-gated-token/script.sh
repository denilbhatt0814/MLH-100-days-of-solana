spl-token create-token \
  --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb \
  --enable-freeze \
  --default-account-state frozen
# Creating token 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb

# Address:  7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v
# Decimals:  9

# Signature: 3KHnSQforVJbjjHUd95XywcykRND964SvkR31ryi4v1y1Gcgei9YEk63B9RBxUyJuw1dskLJfBRm8CLd16AeRYpM

spl-token create-account 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v
# Creating account 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv

# Signature: 55fFMXhPTX8sF4W9nbKdG5HNaD6nuJkN78kmUC3NFrAddcbptmnKA4cU2CxiwEg7u7fBjYAL6wowry5MB5EdQVC

spl-token create-account 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v --owner $(solana address -k /tmp/temp-wallet.json) --fee-payer ~/.config/solana/id.json 
# Creating account 5FocpMm32Ewy8JaBMn1JNYp11XGAswKXRthWDumSHL4i

# Signature: wpD2iRtu26x2chc6fZubFho5VioT69kuihLJJBDVwb2HSmsTnUBj26vkkDCGYCChRsN5Y6QAutBw5BgVvBQmJfs

spl-token mint 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v 100
# Minting 100 tokens
#   Token: 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v
#   Recipient: 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv
# Error: Client(Error { request: Some(SendTransaction), kind: RpcError(RpcResponseError { code: -32002, message: "Transaction simulation failed: Error processing Instruction 0: custom program error: 0x11", data: SendTransactionPreflightFailure(RpcSimulateTransactionResult { err: Some(UiTransactionError(InstructionError(0, Custom(17)))), logs: Some(["Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]", "Program log: Instruction: MintToChecked", "Program log: Error: Account is frozen", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 1180 of 1180 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb failed: custom program error: 0x11"]), accounts: None, units_consumed: Some(1180), loaded_accounts_data_size: Some(711836), return_data: None, inner_instructions: None, replacement_blockhash: None, fee: Some(5000), pre_balances: None, post_balances: None, pre_token_balances: None, post_token_balances: None, loaded_addresses: None }) }) })

spl-token thaw 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv
# Thawing account: 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv
#   Token: 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v

# Signature: 2zYEAsSxXcnnuYRvK2rktUUyB7UhfGtT4oXg2aKV5ZMFcCc1Efv3GMppyGWyAoxy3P2LrVT3khftag8G4RzHJHv5

spl-token mint 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v 100
# Minting 100 tokens
#   Token: 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v
#   Recipient: 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv

# Signature: 38PYhDLk9yG2qznDyF2q1fbjURQBaQaphz3NUwo63GEQyKMMDtJvpza8KYyLMDceUHzjFPGE67Gs1KKQ1LaJDKPo

spl-token transfer 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v 50 $(solana address -k /tmp/temp-wallet.json) --allow-unfunded-recipient
# Transfer 50 tokens
#   Sender: 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv
#   Recipient: DQGwuVJPuAGTLRNAEdKw6ELLNAwe9voGoF2g1wu9FQj1
#   Recipient associated token account: 5FocpMm32Ewy8JaBMn1JNYp11XGAswKXRthWDumSHL4i
# Error: Client(Error { request: Some(SendTransaction), kind: RpcError(RpcResponseError { code: -32002, message: "Transaction simulation failed: Error processing Instruction 0: custom program error: 0x11", data: SendTransactionPreflightFailure(RpcSimulateTransactionResult { err: Some(UiTransactionError(InstructionError(0, Custom(17)))), logs: Some(["Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]", "Program log: Instruction: TransferChecked", "Program log: Error: Account is frozen", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 2265 of 2265 compute units", "Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb failed: custom program error: 0x11"]), accounts: None, units_consumed: Some(2265), loaded_accounts_data_size: Some(712070), return_data: None, inner_instructions: None, replacement_blockhash: None, fee: Some(5000), pre_balances: None, post_balances: None, pre_token_balances: None, post_token_balances: None, loaded_addresses: None }) }) })

spl-token thaw 5FocpMm32Ewy8JaBMn1JNYp11XGAswKXRthWDumSHL4i
# Thawing account: 5FocpMm32Ewy8JaBMn1JNYp11XGAswKXRthWDumSHL4i
#   Token: 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v

# Signature: 4PGPPyKJVxXHjkqTF4ZRJJGkJAnreFY9GCZ1teWiTcrYHjcScfVKJdSVS8hZZW2kaoR8dRDbackqp1HHrRasDRGT

spl-token transfer 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v 50 $(solana address -k /tmp/temp-wallet.json) --allow-unfunded-recipient
# Transfer 50 tokens
#   Sender: 6ghKkKEJpGgsBEFvqjbUKKrA7rvH8s1vRTiLaFAdRkSv
#   Recipient: DQGwuVJPuAGTLRNAEdKw6ELLNAwe9voGoF2g1wu9FQj1
#   Recipient associated token account: 5FocpMm32Ewy8JaBMn1JNYp11XGAswKXRthWDumSHL4i

# Signature: 4cnEnQ5oB98VLZnUKEY8EsAhstdZ4PfLEZhVtiVRXvmGPNkgPvWRXFjRsnPTprTe86WUidf8mSHMrkBsdF5ZzhxC

spl-token accounts --owner $(solana address -k /tmp/temp-wallet.json)
# Token                                         Balance
# -----------------------------------------------------
# 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v  50
# DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV  99
