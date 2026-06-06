https://gist.githubusercontent.com/denilbhatt0814/89489e3cc20a5c9fd3639ec982d0f9e3/raw/be9e1ce0f101f35c8395c8cfc21c70218c341deb/day-44-metadata.json

solana-keygen grind --starts-with nft:1
# Searching with 2 threads for:
#         1 pubkey that starts with 'nft' and ends with ''
# Searched 1000000 keypairs in 19s. 0 matches found.
# Searched 2000000 keypairs in 38s. 0 matches found.
# Wrote keypair to nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt.json

spl-token create-token \ 
  --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb \
  --enable-metadata \
  --decimals 0 \
  ./nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt.json 
# Creating token nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# To initialize metadata inside the mint, please run `spl-token initialize-metadata nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt <YOUR_TOKEN_NAME> <YOUR_TOKEN_SYMBOL> <YOUR_TOKEN_URI>`, and sign with the mint authority.

# Address:  nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
# Decimals:  0

# Signature: 59dRmCXG5c8UvHFkRamqaiApPuchzw7wZepvDDV4DCRaLMxFfLMDVXTWL7gU5YUD4YuUpkbhbEZCxUnYxpq1Yg35

spl-token initialize-metadata \
  nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt \
  "Brat the Simpson" \
  "SIMP" \
  "https://gist.githubusercontent.com/denilbhatt0814/89489e3cc20a5c9fd3639ec982d0f9e3/raw/be9e1ce0f101f35c8395c8cfc21c70218c341deb/day-44-metadata.json"
# Signature: 34bodd8KofCwLHrkMfkYkePHe1KZjHFiT3nEKmk2yenvpMtN4nuxahUMxeNXYPAAWskjun4ExQ7ap71U2VuRZJPd

spl-token create-account nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt 
# Creating account GsbMNxdA6TwmubK3guiKb1YP6PbhAaxcF6iNPDGJ8R4v

# Signature: FmPq1wGyi4vXKh1oDL6zAFMjj1fPm5czaK6NENiY44FnaKkwFyET4DHQriTj2ki5KL6Uzcc1d8tgNTx8g5urWQS

spl-token mint nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt 1
# Minting 1 tokens
#   Token: nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
#   Recipient: GsbMNxdA6TwmubK3guiKb1YP6PbhAaxcF6iNPDGJ8R4v

# Signature: 3HzR3YnAgsSCXrnfGYwLikUtzwVXAmzcjPjY4XdMwaUmoJ4JgrayU37y6WazZGsCGsfpkqv69Y42Jz9qUuFY6u4D

spl-token authorize nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt mint --disable
# Updating nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
#   Current mint: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   New mint: disabled

# Signature: 4ChkdnAMinCPocCoS3GdcnRFkiMEkJJyWimF8YquXqLKM24wWQmMckmQmLYasCCvziWUy56xgDdFSmmBE95N2Rvj

spl-token display nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
# SPL Token Mint
#   Address: nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1
#   Decimals: 0
#   Mint authority: (not set)
#   Freeze authority: (not set)
# Extensions
#   Metadata Pointer:
#     Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Metadata address: nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
#   Metadata:
#     Update Authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Mint: nftryjZd9LwC2d7cW75N5YiwypJyGZ1LA4kABRFJrWt
#     Name: Brat the Simpson
#     Symbol: SIMP
#     URI: https://gist.githubusercontent.com/denilbhatt0814/89489e3cc20a5c9fd3639ec982d0f9e3/raw/be9e1ce0f101f35c8395c8cfc21c70218c341deb/day-44-metadata.json