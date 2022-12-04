// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

//a piece of code
//which has a name to call/use that function
//regular - can return something or write something or both
//pure - homework 
//Use cases 
//github profile 
//view - which doesn't write - you can't change the state of smart contract

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    string public myName = "Sunil Kapadia";
    //datatype view variable_name = variable_value
    uint public num;
    uint public num1;
    uint public ctimestamp;
    address public callinguser;

     function store(uint256 _num) public{
        num = _num;
    }

    //function keyword
    //function name - anything meaningful name
    //() - function parameters/arguments
    //accesifier - public private
    //{} - function body

    function doEverything() public {
        //body statement
        num = num * 123;
    }
    //gas - write function - changing the state of Blockchain
    //no gas for reading
    //view - reading - different values 
    //pure - same value - provided the arguments are same

    function doReturn(uint _num, uint _num1) public returns(uint){
        
        num = _num + _num1;
        return _num + _num1;
      
    }

    function doSomething() public {
        // Local variables are not saved to the blockchain. Ignore warnings, this is only to represent local variables.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        ctimestamp = timestamp;
        address sender = msg.sender; // address of the caller
        //callinguser = sender;
    }
}

//1664127489 - Epoch which is widely used in Blockchain
//IOT devices