// SPDX-License-Identifier: GPL-3.0

//compiler version
pragma solidity >=0.7.0 <0.9.0;
//constructor - automated function which is called when the contract is 
//deployed

//constructor can't return anything

contract simplecontract{
     int a;//by default every variable is private
     
     constructor(int _a){
          a = _a;//argument to the local variable
     }

     function setValue(int _a) public{
          a = _a;
     }

     function getValue() public view returns(int){
          return a;
     }
}