// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;



// (Inheritance way) calling from other contract
/*
contract A {
    // This is called an event. You can emit events from your function
    // and they are logged into the transaction log.
    // In our case, this will be useful for tracing function calls.
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.bar called");
    }
}
contract B is A{
    function foo() public virtual override {
        emit Log("B.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        super.bar();
    }
}
contract C is A,B{
    function foo() public virtual override(B,A) {
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public virtual override(A,B) {
        emit Log("C.bar called");
        super.bar();
    }
}
contract D is B, C {
    // Try:
    // - Call D.foo and check the transaction logs.
    //   Although D inherits A, B and C, it only called C and then A.
    // - Call D.bar and check the transaction logs
    //   D called C, then B, and finally A.
    //   Although super was called twice (by B and C) it only called A once.

    function foo() public override(B, C) {
        super.foo();
    }

    function bar() public override(B, C) {
        super.bar();
    }
}
*/
//2 way

contract Callee {
    uint public x;
    uint public value;

    function setX(uint _x) public returns (uint) {
        x = _x;
        return x;
    }

    function setXandSendEther(uint _x) public payable returns (uint, uint) {
        x = _x;
        value = msg.value;

        return (x, value);
    }
}

contract Caller {
    function setX(Callee _callee, uint _x) public {
        uint x = _callee.setX(_x);
    }
     function setXFromAddress(address _addr, uint _x) public {
         Callee(_addr).setX(_x);
    }

    // function setXFromAddress(address _addr, uint _x) public {
    //     Callee callee = Callee(_addr);
    //     callee.setX(_x);
    // }

    function setXandSendEther(Callee _callee, uint _x) public payable {
        (uint x, uint value) = _callee.setXandSendEther{value: msg.value}(_x);
    }
}






//Ways to calling other contract  by  (Interface) not reccomended use manual calling like in 2 way 
/*
contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}
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
*/
//abi.encodeCall
contract Counter {
    uint public count;

    function get() external view returns (uint) {
        return count;
    }

    function inc() external returns (uint) {
        count += 1;
        return count;
    }
}

contract Test{
   
    function getTestData() external pure returns (bytes memory, bytes memory) {
        return (abi.encodeCall(Counter.get, ()), abi.encodeCall(Counter.inc, ()));
    }
}