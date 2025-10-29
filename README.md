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


@return The address of the owner. Returns the zero address if the color is unowned.
*/
function getColorOwner(uint256 _colorValue) public view returns (address) {
// The 'view' keyword ensures this function does not modify the state and is free to call.
return colorOwners[_colorValue];
}
}
