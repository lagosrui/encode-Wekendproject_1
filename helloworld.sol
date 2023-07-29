// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author - Rui Lagos, Gonçalo Almeida, Rodrigo Sarroeira [ Group 4 ]
/// @title - A simple HelloWorld contract
contract HelloWorld {
    string private text;
    address public owner;
    /// @notice - Created an array of address and give the atribute name onlyOwnersWallets
    /// @dev - To store wallets that will get ownership to the contract
    address[] private onlyOwnersWallets;
    /// @notice - Created an mapping of an number (index) to an adress
    /// @dev - this let me to see/ search all the wallets stores by the index number
    mapping(uint256 => address) private walletByIndex;

    constructor() {
        text = "Hello World";
        owner = msg.sender;
        /// @notice - Store the contract creator as an initial owner
        /// @dev - If din't do it , the first wallet [0] it would be the wallet [1] But only stores inside the array
        onlyOwnersWallets.push(owner);
        /// @notice - mapping initial owner
        walletByIndex[0] = owner;
    }

    function helloWorld() public view returns (string memory) {
        return text;
    }

    function setText(string calldata newText) public onlyOwner {
        text = newText;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        owner = newOwner;
        /// @dev -  how many wallets are stored, and the number will be saved in an attribute to identify the index in the mapping
        uint256 newIndex = onlyOwnersWallets.length;
        /// @dev - Add the new owner to the list of onlyOwners
        onlyOwnersWallets.push(newOwner);
        /// @dev mapping the index to the address that was store at onlyOwnersWallets
        walletByIndex[newIndex] = newOwner;
    }

    /// @dev -  Returns the total number of wallets stored in the onlyOwnersWallets array.
    function howManyPastOwners() public view returns (uint256) {
        return onlyOwnersWallets.length;
    }

    /// @dev - takes an index as input and returns the corresponding wallet address from the onlyOwnersWallets array by looking it up in the walletByIndex mapping.
    function getWalletByIndex(uint256 index) public view returns (address) {
        require(index < onlyOwnersWallets.length, "Index out of range");
        return walletByIndex[index];
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
}
