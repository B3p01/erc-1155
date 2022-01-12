// contracts/sakura.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.0/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.0/contracts/utils/Strings.sol";

contract Sakura is ERC1155 {
    uint256 public constant SAMURAI_GOLD = 0;
    uint256 public constant SAMURAI = 1;
    uint256 public constant SHINOBI_GOLD = 2;
    uint256 public constant SHINOBI = 3;
    uint256 public constant ADVENTURE_PASS = 4;

    constructor() public ERC1155("https://abcoathup.github.io/SampleERC1155/api/token/{id}.json") {
        _mint(msg.sender, SAMURAI_GOLD, 10, "");
        _mint(msg.sender, SAMURAI, 90, "");
        _mint(msg.sender, SHINOBI_GOLD, 10, "");
        _mint(msg.sender, SHINOBI, 90, "");
        _mint(msg.sender, ADVENTURE_PASS, 10000, "");
    }

    function uri(uint256 _tokenId) override public view returns (string memory) {
        return string (
            "https://pinata.cloud/hodl", Strings.toString(_tokenId),".json";
        )
    }
}