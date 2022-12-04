// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//resuability 

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
    
}

//virtual function is solidity