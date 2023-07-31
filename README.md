<h1>﻿First weekend project Team A - GROUP 4</h1>

<h3>Group composed by:</h3>
-Rodrigo Sarroeira
-Gonçalo Almeida
-Rui Lagos

<h3>Contract : 0x99e321b0e73f0146cadfca5be6fdfe9851cbf18b</h3>
https://sepolia.etherscan.io/address/0x60f0f4323e89fe6fb35d180945fd02bb0ea71f04#code

The contract we used: https://github.com/Encode-Club-Solidity-Bootcamp/Lesson-04
We added two functions to the contract that allow the possibility of storing all addresses that were owners and the ability to view which past owners are registered.

Functions Report:

constructor(): Initializes the contract with the "Hello World" text and sets the deployer's address as the owner and adds that address to the onlyOwnersWallets array.

helloWorld(): It simply returns the current value of the text variable and anyone can call it.

setText(string calldata newText): Allows the owner to update the text variable to a new value the first change it was to "Rui Lagos".

transferOwnership(address newOwner): Allows the current owner to transfer ownership to a new address (newOwner). Then updates the owner and adds the new owner's address to the onlyOwnersWallets array.

modifier onlyOwner(): Checks if the sender of the transaction is the same as the owner of the contract. If the condition is met ( the sender is the owner), then the actual function that uses this modifier is executed. Otherwise, the transaction is reverted with an error message.

getOnlyOwnersWalletsCount(): It simply returns the length of the onlyOwnersWallets array, which represents the number of wallet addresses stored

getWalletByIndex(uint256 index): takes an number as input and returns the corresponding wallet address from the onlyOwnersWallets array by looking it up in the walletByIndex mapping. The walletByIndex mapping stores the address of each wallet at a specific index. The function first checks if the provided index is within the range of the onlyOwnersWallets array to avoid any out-of-bounds errors. If the index is valid, it retrieves the wallet address associated with that index from the walletByIndex mapping and returns it.
