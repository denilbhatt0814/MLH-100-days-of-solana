spl-token create-token \
  --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb \
  --interest-rate 500

# Creating token 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA under program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb

# Address:  6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA
# Decimals:  9

# Signature: 2Sr2WkRrgoPS1rtU1vGNMj27RqBZyhrR4BvSNCrjLXg9jjLxxBGzqi463L9XNDBAV29K9sw1vK8uSeCKue8uineE

spl-token create-account 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA \
  --program-id TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
# Creating account 3r3eFKBhLdpF29BxjVNpNbNVnMhc1jYM4vdZujtwxiJP

# Signature: 44pRcFeTyjcYgPxb5mjaz4787FCt6Vcv2WmsfsjT3PAxQJEDViTAhLwZJFzvvkPZXLHwm4bxaRVyEsPHukPhwT9Y


spl-token mint 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA 1000
# Minting 1000 tokens
#   Token: 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA
#   Recipient: 3r3eFKBhLdpF29BxjVNpNbNVnMhc1jYM4vdZujtwxiJP

# Signature: 42ytBwxAykA5XPaDU3P8jyE9M3QHug3kuwfDic5TcczEJs4UbFJoqicEsr3r4fqxqK35kpicSnxSsDRFRcvFfciV

spl-token balance 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA
# 1000.000597337

spl-token display 3r3eFKBhLdpF29BxjVNpNbNVnMhc1jYM4vdZujtwxiJP
# SPL Token Account
#   Address: 3r3eFKBhLdpF29BxjVNpNbNVnMhc1jYM4vdZujtwxiJP
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Balance: 1000
#   Decimals: 9
#   Mint: 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA
#   Owner: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   State: Initialized
#   Delegation: (not set)
#   Close authority: (not set)
# Extensions:
#   Immutable owner

spl-token balance 6138KL8nYMe6aPgsvP56G1W2acq5HBy6EtJwMJPzJ9JA --output json
# {
#   "uiAmount": 1000.001346782,
#   "decimals": 9,
#   "amount": "1000000000000",
#   "uiAmountString": "1000.001346782"
# }