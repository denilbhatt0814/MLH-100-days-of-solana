solana config set -ud
solana airdrop 2
solana-keygen new --outfile ~/recipient-keypair.json --no-bip39-passphrase
solana transfer  0.5 --allow-unfunded-recipient
solana balance
solana balance 