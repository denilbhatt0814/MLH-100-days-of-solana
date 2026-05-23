spl-token create-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb --transfer-fee 200 5000 --enable-metadata --decimals 9
# Creating token Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.

# Address:  Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
# Decimals:  9

# Signature: 3M8ZVpjmAW93CHY5mL35JvCmkz8V321H3CmBBF3TcdCWFDjDpvxN5xE1Rkbo8C2HiuL4KF17jKrH45PXNCf15znu

spl-token initialize-metadata Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa "ReinforceCoin" "RFC" "https://raw.githubusercontent.com/solana-developers/opos-asset/main/assets/CompressedCoil/metadata.json"
# Signature: 3qk1rWueoY6nn32eC38w2M2nusWJAcdXtSf8W3CAEZd2pLw9fU9shDxMBt1f9B6pY6uTVoHLZACk5bnEugBK3gmb

spl-token display Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
# SPL Token Mint
#   Address: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 0
#   Decimals: 9
#   Mint authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#   Freeze authority: (not set)
# Extensions
#   Transfer fees:
#     Current fee: 200bps
#     Current maximum: 5000
#     Config authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Withdrawal authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Withheld fees: 0
#   Metadata Pointer:
#     Authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Metadata address: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#   Metadata:
#     Update Authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Mint: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#     Name: ReinforceCoin
#     Symbol: RFC
#     URI: https://raw.githubusercontent.com/solana-developers/opos-asset/main/assets/CompressedCoil/metadata.json

spl-token create-account Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
# Creating account ALsWRNU8caPAEbkTdFQYgLXHoVhkuUh8CwH2H64EFD6Q
# Signature: 3gLUMmwGV2FgzMoHuXTMNLHtHL8LBMkVgMWfoM2cmE5q7mUbPUA1RhSnNN37t6yMjPVzLCqpU2wuYCKWE6wefsw6

spl-token mint Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa 1000                                            
# Minting 1000 tokens
#   Token: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#   Recipient: ALsWRNU8caPAEbkTdFQYgLXHoVhkuUh8CwH2H64EFD6Q

# Signature: 2MWaG155aYd4YFT3XN1vmnJVVmu5Rs3xEsBB43uUwE4LEJGv2Z3CfjNm5DX2epa7V6mvRUdkeQrctNrfH4wXqZjV


spl-token balance Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa                                             
# 1000

spl-token create-account Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa --owner $(solana address -k /tmp/temp-wallet.json) --fee-payer ~/.config/solana/id.json 
# Creating account Cdxu2EFtUEHYqkyhMEH3NCh4fmujRXGRCCStmTSSjYKT

# Signature: 5y3A9TSi4NLo15NwdDwnjKigU9xje9LTSEzd6bKvFbpcSztjTRtTwUV9Art8XNB82FiopK6wgEo75bDYJLjYyY3G

spl-token transfer Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa 100 \  $(solana address -k /tmp/temp-wallet.json) \
  --allow-unfunded-recipient
# Transfer 100 tokens
#   Sender: ALsWRNU8caPAEbkTdFQYgLXHoVhkuUh8CwH2H64EFD6Q
#   Recipient: 7FeZPcMQQyD7dx1GQZiVw3WPqsVdsGZk8F7ByzFYrWug
#   Recipient associated token account: Cdxu2EFtUEHYqkyhMEH3NCh4fmujRXGRCCStmTSSjYKT

# Signature: sGAEWLBkqd2ndfVzX77PjWpKy1PyCfCzsndPXMHf4XCBcXaEinxgCft76RtduzJiGuVJNfxEM7t7EQYJaGMBFmh

spl-token balance --owner $(solana address -k /tmp/temp-wallet.json) Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa                                            
# 99.999995

spl-token withdraw-withheld-tokens ALsWRNU8caPAEbkTdFQYgLXHoVhkuUh8CwH2H64EFD6Q Cdxu2EFtUEHYqkyhMEH3NCh4fmujRXGRCCStmTSSjYKT
# Signature: 55KRw3wtGFfjFcgSTpacdj5ae6GJgoCArfDVXVtrwkRnXPAa8FZwPkSJSX2YULSjcQygJ8hTXDeCJ6wUV5eyB2jw

spl-token balance Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
# 900.000005

spl-token display Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
# SPL Token Mint
#   Address: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1000000000000
#   Decimals: 9
#   Mint authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#   Freeze authority: (not set)
# Extensions
#   Transfer fees:
#     Current fee: 200bps
#     Current maximum: 5000
#     Config authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Withdrawal authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Withheld fees: 0
#   Metadata Pointer:
#     Authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Metadata address: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#   Metadata:
#     Update Authority: B1wgHT1h9SYsxpp3H6s83c1ummSnPaEHc4qJFdBD5q1B
#     Mint: Bm9dt5vqFP1vyvxAwpNvfBZ1j6vyWT36CmFUXrh66hPa
#     Name: ReinforceCoin
#     Symbol: RFC
#     URI: https://raw.githubusercontent.com/solana-developers/opos-asset/main/assets/CompressedCoil/metadata.json
