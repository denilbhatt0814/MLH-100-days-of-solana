# setup cli wallet
solana config set --url devnet
solana airdrop 1

# create a temp recieving wallet address
solana-keygen new --no-bip39-passphrase -o /tmp/temp-wallet.json
solana transfer --allow-unfunded-recipient $(solana address -k /tmp/temp-wallet.json) 0.001 --url devnet

# inspect the transaction with CLI
solana confirm -v 49kaR15ygudhpHWSdYh5Lxw6QYMv4YuDG4jDJEZ9tsph1fouE6nLz9rwUX37yBR5xRemSNihCS96hCVY7DiDJwZa


# Serialized transaction size limit 1232 Bytes, IPV6 min MTU 1280 Bytes - 48 Bytes (network header)
# This constraints is why Address Lookup Tables exists for complex transactions.

Transaction Structure:
1. Signatures
2. Message
    - Header
    - Account keys: Array[accounts refered by instruction]
    - Recent Blockhash
    - Instructions: Array of Compiled Instructions
        - [{programID_Index, [account_idxs], data: []byte}]

        

