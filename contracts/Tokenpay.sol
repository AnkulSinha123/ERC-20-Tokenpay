// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Tokenpay is ERC20, ERC20Burnable {
    constructor() ERC20("Tokenpay", "TKP") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}