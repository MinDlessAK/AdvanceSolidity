// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;

contract StateVariable {
    //age is state variable
    //state variable cost gas and permanently stored in contract storage
    //solidity is static type language all things decided into compile time 
    uint public age; 

//Ways to put value in age
//1
   //uint public age=10;
//2
/*
     constructor() public{
         age=10;
     }
     */
//3
function setAge() public{
    age=10;
}

 }