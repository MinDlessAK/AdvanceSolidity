// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;

contract A {
uint x =100;
address public owner=msg.sender;
function f1() public pure returns(string memory){ 
       return "hello i am from contract A";
}
function f2 () private pure returns(string memory){ 
       return  "hello i am from contract A";
}
//virtual keyword is used able to edit this function in derived class 
function  f3() internal pure virtual returns(string memory){ 
       return  "hello i am from contract A";
}
function  f4() external pure virtual returns(string memory){ 
       return  "hello i am from contract A";
}

}
contract b is A{
   // by virtual you take permisiion from contract a to edit the function in contract b
   // override  mean if you editing inherited class function then used "overide" keyword

  function  f3() internal pure override  returns(string memory){ 
       return  "hello i am from contract b";
}
function  f4() external pure override virtual returns(string memory){ 
       return  "hello i am from contract b";
}
}
contract c is b{
    function  f4() external pure override returns(string memory){
 
       return  "hello i am from contract c";
}
}