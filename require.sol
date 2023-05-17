// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
//Error handling keyword
  //1.require
  //2.revert
  //3.assert
//require
//snytax
   //require(condition,"give error here");
   //it check condition then execute code
   // if codition get flase the gas will refunded
 //require do two types of works
   //1.input validation(function parameter)
   //2.Access control(only accessed by owner)



 contract Require{
        address public owner =msg.sender;
        uint public age=25;

//1.input validation(function parameter)
        function CheckRequire(uint _x) public{
            age +=5;
            require(_x>2,"Value of X is less then 2");

        }
 //2.Access control(only accessed by owner)
        function OnlyOwner() public {
               require(owner==msg.sender,"you are not the owner");
               age-=2;
        }
 }