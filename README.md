<h1>﻿First weekend project Team A - GROUP 4</h1>

<h3>Group composed by:</h3>
-Rodrigo Sarroeira
-Gonçalo Almeida
-Rui Lagos

The contract
<h3>Contract : 0x29dd68677a7664f5ebd6180c5aa0b761e42390c7</h3>
<h3>Etherscan> https://sepolia.etherscan.io/address/0x29dd68677a7664f5ebd6180c5aa0b761e42390c7</h3>

The contract we used: https://github.com/Encode-Club-Solidity-Bootcamp/Lesson-04
We added two functions to the contract that allow the possibility of storing all addresses that were owners and the ability to view which past owners are registered.



Constructor: 

    Initializes the contract with the "Hello World" text and sets the deployer's address as the owner 
    and adds that address to the onlyOwnersWallets array

Modifiers:

    modifier onlyOwner(): Checks if the sender of the transaction is the same as the owner of the contract. 
    If the condition is met ( the sender is the owner), then the actual function that uses this modifier is executed. 
    Otherwise, the transaction is reverted with an error message.

Functions:

    helloWorld(): It simply returns the current value of the text variable and anyone can call it.
    
    setText(string calldata newText): Allows the owner to update the text variable to a new value the first change it was to "Rui Lagos".

    transferOwnership(address newOwner): Allows the current owner to transfer ownership to a new address (newOwner). 
    Then updates the owner and adds the new owner's address to the onlyOwnersWallets array.

View Functions:

    getHowManyPastOwners(): It simply returns the length of the onlyOwnersWallets array, which represents the number of past or current owners

    getWasOwner(): Takes an adress as input and returns if that wallet was or is a owner 

    function getWhenWasOwner(): takes an adress of a current or past Owner and returns the index corresponding to the order

    function getWhoWasOwner():  Takes an index as input and returns the adress of the owner in that index 
