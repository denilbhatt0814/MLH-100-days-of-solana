spl-token display 78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz
# SPL Token Mint
#   Address: 78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1001000000000
#   Decimals: 6
#   Mint authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#   Freeze authority: (not set)
# Extensions
#   Transfer fees:
#     Current fee: 100bps
#     Current maximum: 1000000000000
#     Config authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withdrawal authority: D8PsUTErJsVLTa3Wu3rtVvv9kwp4jm7sE4hH1LFKjRz1
#     Withheld fees: 0

####
# Token: 78V9z1qaxv3N6BBZ11UwzsJRiVt35XczxoVTQVwPdZTz Contains a transfer fee extension. 
# The transfer fee extension is responsible to enforce a transfer fee at the protocol level.
# Thus upon any transfer event the recipient gets an amount post transfer-fee deduction, and the transfer fee is withold in the desitnation token account, which can be claimed later by the Withdrawl AUthority

spl-token display HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7
# SPL Token Mint
#   Address: HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7
#   Program: TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb
#   Supply: 1000000000000
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

###
# HGJTXDttPozkFs5PJ929JxUHaWgguuXRE31e7knFz7U7 Token consists of 2 Token-2022 Extensions: Interest-Bearing Extension and Transfer Fee extension
# The interest bearing extension is responsible for rewarding an interest for the withholding of token for its duration.
# This is quite similar to holding your cash in High Interest savings account.