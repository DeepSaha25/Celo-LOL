// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Chromachain
 * @dev A simple, beginner-friendly contract allowing users to claim and permanently own unique color values.
 * The color value is simply represented as a unique uint256 identifier.
 */
contract Chromachain {

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
     * @dev Allows the sender to claim a unique color value.
     * @param _colorValue The unique numeric ID representing the color (e.g., a hex color like 16711680 for 0xFF0000).
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
     * @dev Returns the current owner of a given color value.
     * @param _colorValue The color to check.
     * @return The address of the owner. Returns the zero address if the color is unowned.
     */
    function getColorOwner(uint256 _colorValue) public view returns (address) {
        // The 'view' keyword ensures this function does not modify the state and is free to call.
        return colorOwners[_colorValue];
    }
}
