# Day-36
spl-token display 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA 
# SPL Token Mint
#   Address: 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1000000000000
#   Decimals: 9
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Interest-bearing:
#     Current rate: 15000bps
#     Average rate: 500bps
#     Rate authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1

# Day-37
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

# Day-38
spl-token display 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v
# SPL Token Mint
#   Address: 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 100000000000
#   Decimals: 9
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
# Extensions
#   Default state: Frozen

# Checking data size for each token
solana account 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA --output json | grep -o '"space":[ ]*[0-9]*' | grep -o '[0-9]*$'
# 222
solana account DKukXqietB8EDUJXXE5MYc26mSs6Ge9crN5G8es1rWLV  --output json | grep -o '"space":[ ]*[0-9]*' | grep -o '[0-9]*$'
# 633
solana account 7yrewpWq7RS5jhXRscwgJASU5q9TD5bd8ubGekUpEk2v --output json | grep -o '"space":[ ]*[0-9]*' | grep -o '[0-9]*$'
# 171

solana rent 222
# Rent-exempt minimum: 0.002436 SOL

solana rent 633
# Rent-exempt minimum: 0.00529656 SOL

solana rent 171
# Rent-exempt minimum: 0.00208104 SOL