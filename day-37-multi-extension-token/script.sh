spl-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb \
  create-token \
  --decimals 2 \
  --transfer-fee-basis-points 100 \
  --transfer-fee-maximum-fee 500 \
  --interest-rate 5 \
  --enable-metadata
# Creating token DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.

# Address:  DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
# Decimals:  2

# Signature: 4DncuJBhgSSmAJ13qpd6MF16pJBkYsh5iSMb1pJhvXAJFRtvxUQyHbW5AtaS2NnS86Vsa345ojSDmJS8zxRQLAcu

spl-token initialize-metadata \
  DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV \
  "CoffeeBeanToken" \
  "CBT" \
  "https://raw.githubusercontent.com/denilbhatt0814/MLH-100-days-of-solana/refs/heads/main/day-34-token-writeup/assets/metadata.json"

# Signature: ZwJeCeDN8TDhsP4Z7Mkxawd52Ztx4UQtLwnZ5RK1dCDiku2HV7qvjCaJmnxLNBmUfXZVijb8hweSCmsyEavWyZr

spl-token display DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
# SPL Token Mint
#   Address: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 0
#   Decimals: 2
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Interest-bearing:
#     Current rate: 5bps
#     Average rate: 5bps
#     Rate authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Transfer fees:
#     Current fee: 100bps
#     Current maximum: 50000
#     Config authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withdrawal authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withheld fees: 0
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#     Name: CoffeeBeanToken
#     Symbol: CBT
#     URI: https://raw.githubusercontent.com/denilbhatt0814/MLH-100-days-of-solana/refs/heads/main/day-34-token-writeup/assets/metadata.json

spl-token create-account DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
# Creating account Gy96PxiGJh8oGRwQNokq9WRnBRVAXGntNgdPHuLeUDAb

# Signature: 3XvXGVS3FPgkMU681VYgQkwHNFqj4eR8Fmapu8LN1F1heUGgTdmevqnK2UwRA3orxbjk2rxAVmk7whR2CwsPk7Hy

spl-token mint DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV 1000
# Minting 1000 tokens
#   Token: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#   Recipient: Gy96PxiGJh8oGRwQNokq9WRnBRVAXGntNgdPHuLeUDAb

# Signature: 2H2DEU5VuxEqzQU4muZ4KCUsQFkT4kUfBjAaoFRZF3cxvhXHeTeeaMydMA2oL7zxtPJW7LSu9ptTUo2qmy1pZWA2

spl-token create-account DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV --owner /tmp/temp-wallet.json --fee-payer ~/.config/solana/id.json 
# Creating account HzgreAvqSt9QdzHnrcvgrVNVzVxUjkFTEuiHSgyW8WJF

# Signature: 4Y7dorD755wCDdnqPoZQppzQGmNxBbZdqJhKhY14dbvXKHj5iM66EKVkCtZN8Uq5DXRgEfGR6w1pPEgxRj2aQWd5

spl-token transfer DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV 100 /tmp/temp-wallet.json --expected-fee 1 --allow-unfunded-recipient
# Transfer 100 tokens
#   Sender: Gy96PxiGJh8oGRwQNokq9WRnBRVAXGntNgdPHuLeUDAb
#   Recipient: DQGwuVJPuAGTLRNAEdKw6ELLNAwe9voGoF2g1wu9FQj1
#   Recipient associated token account: HzgreAvqSt9QdzHnrcvgrVNVzVxUjkFTEuiHSgyW8WJF

# Signature: 2hb2ecsmWPQPtiR1aRnJ5GdW1VNJXDNzadnRuYTFiUW2DbYoVR6jLqBw1mWa5D2Kc71toNatiVjKKDE9SxnJgxfh

spl-token balance DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
# 900

spl-token balance DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV --owner /tmp/temp-wallet.json 
# 99

spl-token display DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
# SPL Token Mint
#   Address: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 100000
#   Decimals: 2
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Interest-bearing:
#     Current rate: 5bps
#     Average rate: 5bps
#     Rate authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Transfer fees:
#     Current fee: 100bps
#     Current maximum: 50000
#     Config authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withdrawal authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withheld fees: 0
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#     Name: CoffeeBeanToken
#     Symbol: CBT
#     URI: https://raw.githubusercontent.com/denilbhatt0814/MLH-100-days-of-solana/refs/heads/main/day-34-token-writeup/assets/metadata.json

spl-token display HzgreAvqSt9QdzHnrcvgrVNVzVxUjkFTEuiHSgyW8WJF
# SPL Token Account
#   Address: HzgreAvqSt9QdzHnrcvgrVNVzVxUjkFTEuiHSgyW8WJF
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Balance: 99
#   Decimals: 2
#   Mint: DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
#   Owner: DQGwuVJPuAGTLRNAEdKw6ELLNAwe9voGoF2g1wu9FQj1
#   State: Initialized
#   Delegation: (not set)
#   Close authority: (not set)
# Extensions:
#   Immutable owner
#   Transfer fees withheld: 100

spl-token accounts --owner /tmp/temp-wallet.json -v
# Program                                       Token                                         Account                                       Delegated  Close Authority  Balance
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb   DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV  HzgreAvqSt9QdzHnrcvgrVNVzVxUjkFTEuiHSgyW8WJF                              99

spl-token withdraw-withheld-tokens Gy96PxiGJh8oGRwQNokq9WRnBRVAXGntNgdPHuLeUDAb HzgreAvqSt9QdzHnrcvgrVNVzVxUjkFTEuiHSgyW8WJF
# Signature: 5DJTypWwgVeUeNWzM5sJLw23KedtE3X9NgaLncYdSxBuMmRmw8BbNby7bYDivf5RitDiSSrSw8VeXQTaiQcxYe2r

spl-token balance DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV
# 901