# 🌈 **lol: The On-Chain Color Registry**

A fun, creative, and beginner-friendly **decentralized smart contract** that allows users to **claim unique colors on-chain**.  
Once claimed, each color becomes **permanently owned** and **immutably recorded** on the **Ethereum Virtual Machine (EVM)** — turning your favorite shade into a digital collectible.

<p align="center">
  <img width="100%" alt="lol smart contract demo" src="https://github.com/user-attachments/assets/8fec2aa6-b76a-4c32-8f2f-2b00a0ba9de4" />
</p>

---

## 🌟 **Project Description**

Welcome to **`lol`**, a simple and playful decentralized registry built with **Solidity**.  
The project demonstrates **how to store and manage unique digital assets** on-chain — in this case, colors.

Each color is represented as a number (for example, a HEX color converted to a decimal value).  
Users can **claim ownership** of their chosen color by interacting with the smart contract. Once claimed, that color is **permanently linked** to their wallet address.

This project is designed for **beginners exploring Solidity, smart contract storage, mappings, and events**.

---

## 💡 **What It Does**

The **`lol`** contract serves as an **on-chain color registry** that allows users to claim ownership of specific colors:

- 🎨 **Claim a Color:** Call `pickColor(uint256 colorValue)` to register ownership of a unique color value.
- 🔒 **Permanent Ownership:** Once a color is claimed, it cannot be reassigned or deleted.
- 🚫 **Uniqueness Enforced:** Each color can be owned by only one wallet address.
- 🔍 **Transparency:** Anyone can check the owner of a color using `getColorOwner(uint256 colorValue)`.

---

## ✨ **Features**

| Feature | Description |
| :-- | :-- |
| 🎯 **Permanent Ownership** | Once claimed, a color remains owned by the wallet forever. |
| 🧩 **Enforced Uniqueness** | No two users can claim the same color — the contract ensures this with `require`. |
| ⛽ **Gas Efficient** | Simple and clean logic, keeping gas costs minimal. |
| 📡 **Event Logging** | Emits `ColorPicked` when a color is claimed, enabling real-time frontend updates. |
| 🧠 **Educational** | Great learning example for Solidity beginners exploring mappings and events. |

---

## 🤖 **Smart Contract Details**

| Category | Detail |
| :-- | :-- |
| **Language** | Solidity ^0.8.0 |
| **Compiler** | EVM-compatible |
| **Network** | Celo Sepolia Testnet |
| **Contract Address** | `0x773e851c787e2aB30B4F072350BCF96CE87De728` |
| **Block Explorer** | [View on Blockscout](https://celo-sepolia.blockscout.com/address/0x773e851c787e2aB30B4F072350BCF96CE87De728) |

---

## 🔮 **Future Enhancements**

- 🧭 **Interactive DApp:** Build a React or Next.js frontend using **Ethers.js** or **Web3.js** to let users visually pick and claim colors.  
- 🖼️ **Color Gallery:** Create an on-chain/off-chain hybrid gallery showing all claimed colors in real time.  
- 🛡️ **Color Metadata:** Extend the contract to store user-defined metadata (name, hex code, description).  
- 🌐 **NFT Integration:** Convert each claimed color into a lightweight **ERC-721 NFT**, making it tradeable.  

---

## 🙏 **Acknowledgments**

- 💛 **Celo Blockchain** — For offering a sustainable and developer-friendly environment for deploying smart contracts.  
- 🧰 **Remix IDE** — For providing an excellent platform for writing, deploying, and testing Solidity contracts.  

---

<p align="center">
  Made with ❤️ by <b>Deep Saha</b>  
  <br><br>
  <b>⭐ Don't forget to star this repository if you found it helpful!</b>
</p>
