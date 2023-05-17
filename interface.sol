// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Interface
// You can interact with other contracts by declaring an Interface.

// Interface

// cannot have any functions implemented
// can inherit from other interfaces
// all declared functions must be external
// cannot declare a constructor
// cannot declare state variables


interface ICounter {
    function count() external view returns (uint);

    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}

