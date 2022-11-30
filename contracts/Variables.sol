// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract solVariables {

    // by default variables without access modifiers variables are private
    uint public i;

    constructor(uint _i) {
        i = _i;
    }
}