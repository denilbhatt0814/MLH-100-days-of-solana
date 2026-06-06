 spl-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb create-token \
  --decimals 0 \
  --enable-metadata \
  --enable-group
# Creating token BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.
# To initialize group configurations inside the mint, please run `spl-token initialize-group BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb <MAX_SIZE>`, and sign with the mint authority.

# Address:  BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
# Decimals:  0

# Signature: 2CLgw8TN88XW4cfQUu4eELgsSs3JpcVajemF5FZEFVYMGfvRnzYRcB7KfUGmWAM8JDYdLm972GQ8X7YAUApHJjUx

spl-token initialize-metadata BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb \
  "Solana Sketchbook" \
  "SKTCH" \
  "https://gist.githubusercontent.com/janvinsha/b477ebe4dda46b0ef03895c4ea930a46/raw/f29222bcaff0d4979fe7ebb610a00bb97a8418ec/collection.json"

# Signature: 4rjHkPRjHSvBLQocLP8iQNL4Cp5EihXN5HexMYCpyb4gaqdWn545WtNFhJzXNfSAP6cncRBJ7xKTV32byiQe26Ue

spl-token initialize-group BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb 3
# Signature: 55Hvn5qCRRN6nhGdZKLkTJqdEN6iSALxgq7vPfyrZsrSz8NFLEB5onGw64PML5iD3veX5CtK7iF22Unc6DUqsV9L

spl-token --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb create-token \
  --decimals 0 \
  --enable-metadata \
  --enable-member
# Creating token Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.
# To initialize group member configurations inside the mint, please run `spl-token initialize-member Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki`, and sign with the mint authority and the group's update authority.

# Address:  Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
# Decimals:  0

# Signature: 5J6uLugHYanSnJGkT3hr7DaaeeVxvmLQbbhpX3XmKT2VTTeGFDN4Z9wNfGLA7L2ofegcWsDbHvmMdismwRDgGNbY

spl-token initialize-metadata Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki \
  "Sketch #1" \
  "SK1" \
  "https://gist.githubusercontent.com/janvinsha/3412c5d4e92b6de9a2ed82337ecafc44/raw/99359fc62ffd0480b6a52ee1ad4048ecba4ae61c/nft.json"

# Signature: 4hUCFbcehQfz2gvyf7xzJKhBx1FzHcbwHA6xSvQnoXwjkWU8PSEL4UCegfvdLewvBUrF4MxUYFn7Czg99qFaxbkR

spl-token initialize-member Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
# Signature: 5AEQWGPPx5DeW2wDGHK1fwR1RQZmDeN54G4Jkau7u4NQpNQpr36Jgbz52rVftJsDFGkV7ExFyajnw6CsCg4kAj9P

spl-token create-account Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
spl-token mint Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki 1
# Creating account CPTf41i4ejgF2Hh2yzrqS6opfyKUx8MzvCs7SLHbHXmd

# Signature: 4MKyiCJZ1C2LJe3H8aBU1S81hzwoJFDGuHzdtnNmEykqcj1hiiBXeHUjPuecQS9fHH75cocFvuMWr3kHFwehCh3M

# Minting 1 tokens
#   Token: Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#   Recipient: CPTf41i4ejgF2Hh2yzrqS6opfyKUx8MzvCs7SLHbHXmd

# Signature: 4rL8q91jTVap4YAQmsHtudhgpsRgjcPh9ZQjRRAbmKj2rZjFx2FDjZuf91QutgFZByXQA99SPuXiAvyDgRQG1PhF

spl-token authorize Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki mint --disable
# Updating Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#   Current mint: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   New mint: disabled

# Signature: t2vJMfLtFsVonT9PEnCr5Ju5Z8hmoZTaxQEzky5SqFrGEiytwdQ7mBagWRExcezo8paXGZnNnFGwuRaaUASWfWm

spl-token --program-id T
okenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb create-token \
  --decimals 0 \
  --enable-metadata \
  --enable-member
# Creating token 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.
# To initialize group member configurations inside the mint, please run `spl-token initialize-member 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna`, and sign with the mint authority and the group's update authority.

# Address:  3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
# Decimals:  0

# Signature: 5WmLu4e3Vp1Tm6RygnYccw2BEyLdRHrhZBGrzRaw4B2JTXKZJtcJkWbFy9iHSkWhDxmFieTetvhGweTsCuWkXErQ

spl-token initialize-metadata 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna \
  "Sketch #2" \
  "SK2" \
  "https://gist.githubusercontent.com/janvinsha/3412c5d4e92b6de9a2ed82337ecafc44/raw/99359fc62ffd0480b6a52ee1ad4048ecba4ae61c/nft.json"

# Signature: zTf7HF1eLFbiGc7d3HxGBvnet1TVuDA7YZn3gjL3JpCckq6KkT88YYpTUsG1uPQBjU1YsZDjgjcgNwprYsPSgHc

spl-token initialize-member 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
# Signature: 2x4BMbanX6Vrd3hBYEJSyojJqr1fu3eQNRi44KN4uB3ntDUgWNsRMXTB13eFUxrJZr3YpbATXA1mdU5YNeab72RA

spl-token create-account 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
spl-token mint 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna 1
# Creating account 4p4i3MMcDoyBNJVKP4gRQNppj64E1pbB5RcEAd96Z4RN

# Signature: TzpYfEFNrCEX5vk1o5FysvTprmqFvtzSRTG3XpfQ9Pv77URGbqRU8zrUJUZJJV6iBdWVXNzJ2j9o1a3g7hBV5Bo

# Minting 1 tokens
#   Token: 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
#   Recipient: 4p4i3MMcDoyBNJVKP4gRQNppj64E1pbB5RcEAd96Z4RN

# Signature: 5EWecSHXa4rY8QBEcZPSjf8qrXSx3jg7kcwER7qgSdLZ2veBtxVf2oC14oqvvBRK9a4dwdcp1a3fNt4TdtsXCWFj

spl-token authorize 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna mint --disable
# Signature: 5mkwmXPuiTMueh1poJYqZfqFHtwP1nwD2bgaHvK5EaMMtw6qoB9iyvat3YtJYrqBXYDXeHRNCLUoYzv6cjD1dPHs

spl-token display BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
# SPL Token Mint
#   Address: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 0
#   Decimals: 0
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#   Group Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Group address: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#     Name: Solana Sketchbook
#     Symbol: SKTCH
#     URI: https://gist.githubusercontent.com/janvinsha/b477ebe4dda46b0ef03895c4ea930a46/raw/f29222bcaff0d4979fe7ebb610a00bb97a8418ec/collection.json
#   Token Group:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#     Size: 2
#     Max Size: 3

spl-token display Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki

# SPL Token Mint
#   Address: Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1
#   Decimals: 0
#   Mint authority: (not set)
#   Freeze authority: (not set)
# Extensions
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#   Group Member Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Member address: Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#     Name: Sketch #1
#     Symbol: SK1
#     URI: https://gist.githubusercontent.com/janvinsha/3412c5d4e92b6de9a2ed82337ecafc44/raw/99359fc62ffd0480b6a52ee1ad4048ecba4ae61c/nft.json
#   Token Group Member:
#     Mint: Eo6RBCvvvEudirF9m3VZgismLGzD7tmbWsL8j8uUpNki
#     Group: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#     Member Number: 1

spl-token display 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
# SPL Token Mint
#   Address: 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1
#   Decimals: 0
#   Mint authority: (not set)
#   Freeze authority: (not set)
# Extensions
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
#   Group Member Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Member address: 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
#     Name: Sketch #2
#     Symbol: SK2
#     URI: https://gist.githubusercontent.com/janvinsha/3412c5d4e92b6de9a2ed82337ecafc44/raw/99359fc62ffd0480b6a52ee1ad4048ecba4ae61c/nft.json
#   Token Group Member:
#     Mint: 3CiuJ4ijHy5yA6DdbuyhmWGqnMstNB6mJeNChkjvHAna
#     Group: BsTKbQ1Nmo8LqiWEApmiu6y4YQtGVoMZS2fC5TUizhb
#     Member Number: 2