🌈 lol: The On-Chain Color Registry

🌟 Project Description
<img width="3054" height="1450" alt="image" src="https://github.com/user-attachments/assets/8fec2aa6-b76a-4c32-8f2f-2b00a0ba9de4" />




Welcome to lol, a fun and simple decentralized application (dApp) concept built on the Solidity language.

This project is a beginner-friendly smart contract that lets users claim and permanently own a unique, on-chain color value. Think of it as a collectible registry where every color is a unique digital asset, permanently secured by the contract. 

💡 What It Does

The lol contract acts as a digital ledger for color ownership.

When a user calls the pickColor function, they register a specific number (which represents a color, often a standard hex color code converted to a decimal) to their wallet address. Since the contract enforces that each color can only be claimed once, you can become the permanent owner of your favorite shade!

The getColorOwner function allows anyone to check which address owns a specific color value.

✨ Features

Permanent Ownership: Once you claim a color, it's yours forever.

Enforced Uniqueness: The contract strictly ensures that only one wallet address can own a specific color value, using the require statement.

Gas Efficiency: The core logic is simple and straightforward, keeping transaction costs low.

Event Logging: Uses the ColorPicked event to allow external web applications (like a color gallery) to easily track and display new claims in real-time.

🔗 Deployed Smart Contract Link

You can view the contract on the Celo Sepolia testnet explorer here:

https://celo-sepolia.blockscout.com/address/0x773e851c787e2aB30B4F072350BCF96CE87De728

💻 Smart Contract Code

//paste your code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**

@title lol

@dev A simple, beginner-friendly contract allowing users to claim and permanently own unique color values.

The color value is simply represented as a unique uint256 identifier.
*/
contract lol {

// Mapping to store the owner of a specific color value.
// The key is the color (uint256), and the value is the owner's address.
// If the address is address(0) (the default value), the color is unowned.
mapping(uint256 => address) private colorOwners;

// Event emitted when a new color is successfully claimed.
// Events are crucial for external applications (like a website) to track changes on the blockchain.
event ColorPicked(
uint256 indexed colorValue, // The color that was claimed
address indexed owner       // The address that claimed it
);

/**

@dev Allows the sender to claim a unique color value.

@param _colorValue The unique numeric ID representing the color (e.g., a hex color like 16711680 for 0xFF0000).
*/
function pickColor(uint256 _colorValue) public {
// 1. Basic check: Ensure the color value is not zero.
// Zero is often used as a default/uninitialized state in programming.
require(_colorValue != 0, "Color value cannot be zero.");

// 2. Uniqueness check: Ensure the color has not been claimed yet.
// We check if the current owner is the zero address (address(0)).
require(colorOwners[_colorValue] == address(0), "This color is already owned.");

// 3. Action: Assign the ownership of the color to the person who called the function (msg.sender).
colorOwners[_colorValue] = msg.sender;

// 4. Logging: Emit an event to record the claim on the blockchain's transaction log.
emit ColorPicked(_colorValue, msg.sender);
}

/**

@dev Returns the current owner of a given color value.

@param _colorValue The color to check.

@return The address of the owner. Returns the zero address if the color is unowned.
*/
function getColorOwner(uint256 _colorValue) public view returns (address) {
// The 'view' keyword ensures this function does not modify the state and is free to call.
return colorOwners[_colorValue];
}
}
