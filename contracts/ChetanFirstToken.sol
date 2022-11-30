// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ChetanToken is ERC20 {
    constructor() ERC20("ChetanToken", "CTK") {
        _mint(msg.sender, 100000 * (10 * uint256(decimals())));
    }
}
