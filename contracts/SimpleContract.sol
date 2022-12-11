// SPDX-License-Identifier: GPL-3.0

//compiler version
pragma solidity >=0.7.0 <0.9.0;
//constructor - automated function which is called when the contract is 
//deployed

//constructor can't return anything

contract simplecontract{
     // int a;//by default every variable is private
     uint public a = 50;
     string public myString = "Hello World";
     
     constructor(uint _a){
          a = _a;//argument to the local variable
     }

     function setValue(uint _a) public{
          a = _a;
     }

     function getValue() public view returns(uint){
          return a;
     }

     function setString(string memory _mystring) public{
          myString = _mystring;
     }

     function getString() public view returns(string memory){
          return myString;
     }
}