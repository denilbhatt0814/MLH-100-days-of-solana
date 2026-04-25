# Get Devnet balance for your wallet in SOL:
address=$(solana address)
echo "Balance in SOL for $address: $(solana balance --url devnet)"
echo "Balance in Lamports for $address: $(solana balance --url devnet --lamports)"

# Look up for most recent transaction on this account:
recent_tx=$(solana transaction-history "$address" --url devnet --limit 1 | head -n 1)
echo "Most recent transaction hash: $recent_tx"

# Extract and print the fee for the most recent transaction
fee=$(solana confirm "$recent_tx" -v --url devnet | grep 'Fee:' | awk '{print $2}')
inSOL=$(echo "$fee" | sed 's/^◎//')
lamports=$(echo "$inSOL * 1000000000" | bc | awk '{printf "%d", $1}')
echo "Fee for most recent transaction: $inSOL SOL or $lamports Lamports"
