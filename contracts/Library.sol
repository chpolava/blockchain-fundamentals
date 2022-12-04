// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


//modular programming 
//interface 
//multiple classes - c# java 
//inherit one class - Class 
//implement the other - Interface

library SafeMath {
    function add(uint x, uint y, uint q) internal pure returns (uint) {
        uint z = x + y + q;
        //require(z >= x, "uint overflow");
        
        return z;
    }
}
//add, subtract, division, mult
contract TestSafeMath {
    //to use the library
    using SafeMath for uint;
    //msg.sender;
    //uint public MAX_UINT = 2**256 - 1;

    function testAdd(uint x, uint y,uint q) public pure returns (uint) {
        x = x.add(x,x);
        return q.add(x,y);
    }
}