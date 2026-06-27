export MINT=78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz
spl-token mint $MINT 1000000
# Minting 1000000 tokens
#   Token: 78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz
#   Recipient: CxP3aHCxVk5HGY4qqwrX2y7weJnm9armPL1SQQrELrVB

# Signature: 4oNypnasosx3DW3WWk9jCDa7t8FSSaNK3LzoWuNE4JdfLnP2PKfCefQpPHz1u2g86ESHK5fo8KTRkZGWvdUUbaEK

solana-keygen new --no-bip39-passphrase --outfile /tmp/tmp-wallet.json
export RECIPIENT=$(solana address -k /tmp/tmp-wallet.json)
echo "Recipient wallet: $RECIPIENT"

spl-token create-account $MINT --owner $RECIPIENT --fee-payer ~/.config/solana/id.json
# Signature: 2uwAtcMBBfjEX1xZQfjMkqg5HFoFiTRxhxcnCqvvXGA5fpx97iBRJRUvTEf8rDmqH6BMnWhSru7TEXP3PqygwUQf

spl-token transfer --expected-fee 10 $MINT 1000 $RECIPIENT --allow-unfunded-recipient
# Transfer 1000 tokens
#   Sender: CxP3aHCxVk5HGY4qqwrX2y7weJnm9armPL1SQQrELrVB
#   Recipient: 8wp78om5NAmVAXcBCmb34aNeuHYMZxgg7Gn5yiaaGVfr
#   Recipient associated token account: 5jaMmnR5HhYYSs1UNsHe2p9Hf9Ff71Kc8L3QZzx14ity

# Signature: 4Gh7Wi4MZVW1CiwzUohGGjsdQZKZuSAEKxRtu6EXs7QNWFdJ732EYv7ygfAcy4txuMNTKXt1h7AdydBDV1WTLD3p

spl-token accounts --owner $RECIPIENT --verbose
# Program                                       Token                                         Account                                       Delegated  Close Authority  Balance
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb   78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz  5jaMmnR5HhYYSs1UNsHe2p9Hf9Ff71Kc8L3QZzx14ity                              990

# export RECIPIENT_TA=5jaMmnR5HhYYSs1UNsHe2p9Hf9Ff71Kc8L3QZzx14ity

export RECIPIENT_TA=5jaMmnR5HhYYSs1UNsHe2p9Hf9Ff71Kc8L3QZzx14ity
spl-token display $RECIPIENT_TA 
# SPL Token Account
#   Address: 5jaMmnR5HhYYSs1UNsHe2p9Hf9Ff71Kc8L3QZzx14ity
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Balance: 990
#   Decimals: 6
#   Mint: 78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz
#   Owner: 8wp78om5NAmVAXcBCmb34aNeuHYMZxgg7Gn5yiaaGVfr
#   State: Initialized
#   Delegation: (not set)
#   Close authority: (not set)
# Extensions:
#   Immutable owner
#   Transfer fees withheld: 10000000

spl-token accounts $MINT --verbose
# Program                                       Account                                       Delegated  Close Authority  Balance
# -------------------------------------------------------------------------------------------------------------------------------
# TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb   CxP3aHCxVk5HGY4qqwrX2y7weJnm9armPL1SQQrELrVB                              1000000

export MY_TA=CxP3aHCxVk5HGY4qqwrX2y7weJnm9armPL1SQQrELrVB

spl-token withdraw-withheld-tokens $MY_TA $RECIPIENT_TA
# Signature: 5mn1TtaF8QfyH49sjnhVT7z1uBijMhy4fy6Csf7nMTPSoQ8fQ97Teg797Wdi95xMnHE879bwrfg4kGQa2NGao7Sn

spl-token display $RECIPIENT_TA
# SPL Token Account
#   Address: 5jaMmnR5HhYYSs1UNsHe2p9Hf9Ff71Kc8L3QZzx14ity
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Balance: 990
#   Decimals: 6
#   Mint: 78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz
#   Owner: 8wp78om5NAmVAXcBCmb34aNeuHYMZxgg7Gn5yiaaGVfr
#   State: Initialized
#   Delegation: (not set)
#   Close authority: (not set)
# Extensions:
#   Immutable owner
#   Transfer fees withheld: 0

spl-token balance $MINT
# 1000010