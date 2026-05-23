# create a token using the Token-2022 program
spl-token create-token \
  --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb \
  --enable-metadata \
  --decimals 6

# Creating token DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.

# Address:  DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN
# Decimals:  6

# Signature: 4HvVjPsvY988rpCUWgkcLU8ufQujz7PDJecfRZNFmajWZU1FmLJHXh9YdFyxmGCf2iRTJ6ycsmt1wcEqvZLp9QYo


# spl-token initialize-metadata DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN "DensCoin" "DNC" "https://raw.githubusercontent.com/solana-developers/opos-asset/main/assets/DeveloperPortal/metadata.json"

spl-token initialize-metadata DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN "DensCoin" "DNC" "https://raw.githubusercontent.com/solana-developers/opos-asset/main/assets/DeveloperPortal/metadata.json"

# Signature: 2pZbN2fWsA1AHvpGw1cMLWy5B15B8gYTdibtkQc8EuFRc1GwTZ6rvBpgA6uLWTHhTuo2yNdADwntQyfypqWoxKo3

spl-token create-account DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN
# Creating account 42PRjJTFEFR65UxtLH4RJD8i1Ru6mmdJxXmfpPoD1BM9

# Signature: 5ccPENejJSrVRjAuFKmWZN6HVsLiZFpKRycThegsk1XiPsFngMvdLVsUA68p9EMrzSDqFdzsWw71FKJKo2h8v1PD

spl-token mint DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN 1000  
# Minting 1000 tokens
#   Token: DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN
#   Recipient: 42PRjJTFEFR65UxtLH4RJD8i1Ru6mmdJxXmfpPoD1BM9

# Signature: 2yvF5NeaUuWbJoffpt5rJtQUn88nbM3H3hgches8Fbf1rfaF9fRxCWiGAU2QJoaansxRndoVHHpewFPyQzYbPxCR

spl-token balance DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN
# 1000

spl-token transfer DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN 250 $(solana address -k /tmp/temp-wallet.json) --fund-recipient --allow-unfunded-recipient
# Transfer 250 tokens
#   Sender: 42PRjJTFEFR65UxtLH4RJD8i1Ru6mmdJxXmfpPoD1BM9
#   Recipient: 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug
#   Recipient associated token account: AnSf51hrUEVVV1xLwmo4FTadc9inf1KY49voy3grckRM
#   Funding recipient: AnSf51hrUEVVV1xLwmo4FTadc9inf1KY49voy3grckRM

# Signature: J1569vAo98GYvVFphAfb2ohEScykt9fbbtugSTsxbjcbL9bXgCL3VqJgqUBQJgxV21HvMUaBwGtKgQJY7VY4zYH


solana confirm -v J1569vAo98GYvVFphAfb2ohEScykt9fbbtugSTsxbjcbL9bXgCL3VqJgqUBQJgxV21HvMUaBwGtKgQJY7VY4zYH
# RPC URL: https://api.devnet.solana.com
# Default Signer Path: /home/denil/.config/solana/id.json
# Commitment: confirmed

# Transaction executed in slot 464298025:
#   Block Time: 2026-05-23T11:38:39+05:30
#   Version: legacy
#   Recent Blockhash: 8nvwkNXNvo5ULeySFNB9XMbwFNXvWLgVGGrsXg1j6ifx
#   Signature 0: J1569vAo98GYvVFphAfb2ohEScykt9fbbtugSTsxbjcbL9bXgCL3VqJgqUBQJgxV21HvMUaBwGtKgQJY7VY4zYH
#   Account 0: srw- B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B (fee payer)
#   Account 1: -rw- 42PRjJTFEFR65UxtLH4RJD8i1Ru6mmdJxXmfpPoD1BM9
#   Account 2: -rw- AnSf51hrUEVVV1xLwmo4FTadc9inf1KY49voy3grckRM
#   Account 3: -r-- 11111111111111111111111111111111
#   Account 4: -r-x ComputeBudget111111111111111111111111111111
#   Account 5: -r-x TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Account 6: -r-- 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug
#   Account 7: -r-x ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL
#   Account 8: -r-- DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN
#   Instruction 0
#     Program:   ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL (7)
#     Account 0: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B (0)
#     Account 1: AnSf51hrUEVVV1xLwmo4FTadc9inf1KY49voy3grckRM (2)
#     Account 2: 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug (6)
#     Account 3: DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN (8)
#     Account 4: 11111111111111111111111111111111 (3)
#     Account 5: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb (5)
#     Data: [1]
#   Instruction 1
#     Program:   TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb (5)
#     Account 0: 42PRjJTFEFR65UxtLH4RJD8i1Ru6mmdJxXmfpPoD1BM9 (1)
#     Account 1: DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN (8)
#     Account 2: AnSf51hrUEVVV1xLwmo4FTadc9inf1KY49voy3grckRM (2)
#     Account 3: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B (0)
#     Data: [12, 128, 178, 230, 14, 0, 0, 0, 0, 6]
#   Instruction 2
#     Program:   ComputeBudget111111111111111111111111111111 (4)
#     Data: [2, 216, 77, 0, 0]
#   Status: Ok
#     Fee: ◎0.000005
#     Account 0 balance: ◎2.85194136 -> ◎2.84986228
#     Account 1 balance: ◎0.00207408
#     Account 2 balance: ◎0 -> ◎0.00207408
#     Account 3 balance: ◎0.000000001
#     Account 4 balance: ◎0.000000001
#     Account 5 balance: ◎0.001159846
#     Account 6 balance: ◎1.142
#     Account 7 balance: ◎5.93806954
#     Account 8 balance: ◎0.00390456
#   Compute Units Consumed: 19928
#   Log Messages:
#     Program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL invoke [1]
#     Program log: CreateIdempotent
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [2]
#     Program log: Instruction: GetAccountDataSize
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 1523 of 14586 compute units
#     Program return: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb qgAAAAAAAAA=
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success
#     Program 11111111111111111111111111111111 invoke [2]
#     Program 11111111111111111111111111111111 success
#     Program log: Initialize the associated token account
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [2]
#     Program log: Instruction: InitializeImmutableOwner
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 736 of 8241 compute units
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [2]
#     Program log: Instruction: InitializeAccount3
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 2153 of 5168 compute units
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success
#     Program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL consumed 17217 of 19928 compute units
#     Program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL success
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb invoke [1]
#     Program log: Instruction: TransferChecked
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb consumed 2561 of 2711 compute units
#     Program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb success
#     Program ComputeBudget111111111111111111111111111111 invoke [1]
#     Program ComputeBudget111111111111111111111111111111 success

# Finalized

spl-token balance DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN
# 750

spl-token balance --owner $(solana address -k /tmp/temp-wallet.json) DMmYjvq78HQQdvUSD7AQWGbN8d4UoXggX7As44EpSpuN 
# 250