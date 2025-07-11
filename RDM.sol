// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import ".https://github.com/Alirezagolsha/RADIUM/blob/main/erc20.sol/ERC20.sol";
import ".https://github.com/Alirezagolsha/RADIUM/blob/main/erc20.sol/Ownable.sol";



contract RadiumToken is ERC20Implementation {
    constructor(uint256 initialSupply) ERC20Implementation(initialSupply) {
        // ضرب کردن initialSupply در (10 ** uint256(decimals)) برای اعمال اعشار
        _mint(msg.sender, initialSupply * (10 ** uint256(decimals)));
    }
}
