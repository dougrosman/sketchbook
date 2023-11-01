// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArToken {
    string public name = "arToken";
    string public symbol = "ART";
    uint8 public decimals = 18; // 18 decimal places, similar to ETH
    uint256 public totalSupply;
    address public owner;
    
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event TokensMinted(address indexed to, uint256 value);

    constructor() {
        owner = msg.sender;
        totalSupply = 1_000_000 * 10**uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }

    // Mint tokens based on player's points
    function mintTokens(uint256 value) public {
        require(msg.sender != address(0), "Invalid address");
        require(value > 0, "Value must be greater than 0");
        
        // Mint tokens to the player
        balanceOf[msg.sender] += value;
        totalSupply += value;
        
        emit TokensMinted(msg.sender, value);
    }
}
