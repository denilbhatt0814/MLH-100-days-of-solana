spl-token create-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb --decimals 6 --transfer-fee-basis-points 100 --transfer-fee-maximum-fee 1000000 --interest-rate 5000
# Address:  HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7
# Decimals:  6

# Signature: 2V5zHN7G4P6Uom3pQ2NQLLz1UipgD3b7Z1f4jiVNpnVsZ1dBvQ7AvCDWV5fvccKWBwZyBYXq1Wmc5Sw42x8bbPq8

spl-token display $MINT
# SPL Token Mint
#   Address: HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 0
#   Decimals: 6
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Interest-bearing:
#     Current rate: 5000bps
#     Average rate: 5000bps
#     Rate authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Transfer fees:
#     Current fee: 100bps
#     Current maximum: 1000000000000
#     Config authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withdrawal authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withheld fees: 0

spl-token create-account $MINT
# Creating account LmkebBHty35GjgTL8ZHLkBg3dBXhK5zc7YRyA5Yi1pw

# Signature: 37AyDpd6zwPdGDAZJ1T4Twz7N9WWZipTgzwFBGcNf2uT6d5gHncgpMzFN9do5UZguRu7tUQH4dpUHHFzayrwGiig

export MY_TA=LmkebBHty35GjgTL8ZHLkBg3dBXhK5zc7YRyA5Yi1pw
spl-token mint $MINT 1000000
# Minting 1000000 tokens
#   Token: HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7
#   Recipient: LmkebBHty35GjgTL8ZHLkBg3dBXhK5zc7YRyA5Yi1pw

# Signature: 3rE8Ykf7AtvBXMGSzFwRAMQReX8cffHHKo4FqtE3rV3pRT8bPepKvdVCUV2dTptKN1rHru7Ce2LJqpDEq8dqUnQ9


spl-token accounts $MINT --verbose | awk 'NR==3'
sleep 30
spl-token accounts $MINT --verbose | awk 'NR==3'
# TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb   LmkebBHty35GjgTL8ZHLkBg3dBXhK5zc7YRyA5Yi1pw         1000002.36083
# TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb   LmkebBHty35GjgTL8ZHLkBg3dBXhK5zc7YRyA5Yi1pw         1000002.85201

RECIPIENT=$(solana-keygen pubkey /tmp/tmp-wallet.json)
solana transfer $RECIPIENT 0.01 --allow-unfunded-recipient
# Signature: 7oJNbVqfS83VF9nvbj8foqEWFwYZBP4iA6WCY4d9d6YtSVpd7Lr3ZLMD2kuiWv9VpW4AX3wuL1Xektx5wC91MiK

spl-token create-account $MINT --owner $RECIPIENT --fee-payer ~/.config/solana/id.json
# Creating account E2UpAPtdghctfo15HGUk5vRV3p8M1LSyWroSSwLNKZfp
# Signature: 5G8rRLKsuaVtDi1jVcd6LfPBbF8JazK5PduVZumA7iX7RLHJZkhtUzWM6J1QMkn5fd2xsHu4ZqsMAaN3hdQ49Akq

export RECIPIENT_TA=E2UpAPtdghctfo15HGUk5vRV3p8M1LSyWroSSwLNKZfp
spl-token transfer $MINT 1000 $RECIPIENT --expected-fee 10
# Transfer 1000 tokens
#   Sender: LmkebBHty35GjgTL8ZHLkBg3dBXhK5zc7YRyA5Yi1pw
#   Recipient: 8wp78om5NAmVAXcBCmb34aNeuHYMZxgg7Gn5yiaaGVfr
#   Recipient associated token account: E2UpAPtdghctfo15HGUk5vRV3p8M1LSyWroSSwLNKZfp

# Signature: 5QZsG1EpKhfmqLpCn9ZCpB6i7FQBviE3Z1PzzLFFRzwWbWUwE4nzsTJBime7kFojRfy193QTazhqY6XRREwizhz3


spl-token display $RECIPIENT_TA
# SPL Token Account
#   Address: E2UpAPtdghctfo15HGUk5vRV3p8M1LSyWroSSwLNKZfp
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Balance: 990
#   Decimals: 6
#   Mint: HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7
#   Owner: 8wp78om5NAmVAXcBCmb34aNeuHYMZxgg7Gn5yiaaGVfr
#   State: Initialized
#   Delegation: (not set)
#   Close authority: (not set)
# Extensions:
#   Immutable owner
#   Transfer fees withheld: 10000000

spl-token withdraw-withheld-tokens $MY_TA $RECIPIENT_TA
# Signature: 28awH8x5WEZfgZBoA3SWSU79NnudFKXSUFAMS24tNddCKqTbQL8cWmELYJ8XyQ2HyoFiMYsPthhuySrKcpiEwYeh
