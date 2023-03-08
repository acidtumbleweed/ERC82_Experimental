# ERC82_Experimental
 An ERC-1155 compliant token with the ability to lend.

 When tokens are lent, their balance is reflected as having that many less so that users can not trasfer or burn them.

 For example, if wallet A owns 100 tokens and lends all 100 to wallet B, wallet A's balance will be 0.

## Sample Solidity
'''// Lend Tokens
erc82.lendTo(from, to, tokenId, amount);

// Revoke Tokens
erc82.revokeFrom(owner, borrower, tokenId, amount);

//Return Tokens
erc82.returnTo(borrower, owner, tokenId, amount);

// Check if a wallet is being lent any tokens
if (erc82.numLent(wallet, tokenId) > 0) { /* This wallet has 'access' */ }

// Check if a wallet is lending any tokens
if (erc82.numLending(wallet, tokenId) > 0) { /* This wallet is lending at least one token to another wallet */ }

// Check if a wallet is lending to a specific wallet
if (erc82.numLendingTo(owner, borrower, tokenId) > 0) { /* This wallet has lending some amount of tokens to the specified borrower */ }

// These events are emitted whenever their respective functions are invoked
emit Lend(from, to, id, value);
emit Revoke(from, to, id, value);
emit Return(from, to, id, value);'''