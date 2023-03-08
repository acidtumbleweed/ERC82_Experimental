// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

/**
 * ERC82 is an experiemntal token that is ERC1155 compliant but allows its users to lend tokens to other wallets.
 * When tokens are lent to other wallets, the owner's balance is reduced and they are untouchable until returned.
 * Owners of tokens may revoke them at any time and borrowers may also return them at any time.
 * Borrowers may not sell or burn lent tokens and their balances are not increased. Instead, ERC82 has methods to check if any are lent. 
 */ 
contract ERC82 {
    constructor() {
    }
}
