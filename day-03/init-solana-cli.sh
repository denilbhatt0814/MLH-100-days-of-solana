sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"

# confirm solana installation
solana --version

# update PATH if above command doesn't work
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# setup CLI wallet
solana-keygen new
solana config set --url devnet

# to view your wallet address
solana address 