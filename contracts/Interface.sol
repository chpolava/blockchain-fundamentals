// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

// We can deploy library or contract but cannot deploy interface
interface ICounter {
    function count() external view returns (uint);

    function increment() external;
}

//if the network is same for both interface and contract implemented

contract MyContract {
    // Need to pass the address of the Counter contract address
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}