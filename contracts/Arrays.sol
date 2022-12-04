// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//array is a group of variables 
//Sunil is a group of Limbs/body parts
//Array contains the variables of the same datatype
//collection = 6 
//rollno = collection of students
//index location of your variable inside the array
//static array = the size is known
//dynamic array = the size is unknown
contract Array {
    // Several ways to initialize an array
    //int[] public intArray;
    uint[] public arr;
    uint public lastvar;
    //uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr; // 0 to 9
    uint[] public array3 = [1,2,3,4,5];
    //array starts with zero index 
    function get(uint i) public view returns (uint) {
        return arr[i]; //i is index of the array
    }
    //arr[0] = 1,
    //arr[1] = 2
    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[10] memory) {
        return myFixedSizeArr;
    }
    //array or string memory keyword is used
    //insert
    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1. //index is automatic
        arr.push(i);
    }
    //10 - array idenx 9
    //delete
    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        lastvar = arr[arr.length - 1];
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    
}