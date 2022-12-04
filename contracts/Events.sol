// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
pragma experimental ABIEncoderV2;


contract Events{
    struct Person{
        uint age;
        string name;
    } 
    
    Person p1;
    
    constructor() public {
        p1.age = 12;
        p1.name ="Sam";
    }
    
    event newPerson(address owner,Person p2,uint timestamp);
    //store the offchain data
    //everything on Blockchain - Onchain
    //Everything apart from Blockchain - offchain
    
    
    function getPerson() public view returns(Person memory)
    {
        return p1;
    }
    
    function setPerson(uint _age,string memory _name) public {
        p1.age = _age;
        p1.name = _name;
        emit newPerson(msg.sender,p1,block.timestamp);
    } 
    
}