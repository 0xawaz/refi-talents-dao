// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ReFiTalentsDAO is ERC20, Ownable {
    constructor() ERC20("ReFi Talents Token", "RFT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function reward(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
