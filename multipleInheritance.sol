// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
contract A{
  uint public a;

constructor(){
    a=100;
}
function funa()public{
    a=10;
}


function fun() public pure  virtual returns(string memory){
return"hi i am in A";
}
}
contract B is A{
      uint public b;

constructor(){
    b=100;
}
function funb()public{
    b=10;
}
function fun() public pure  virtual override returns(string memory){
    return"hi i am in B";
}

}
contract C is A,B{
     function fun() public pure  virtual override(A,B) returns(string memory){
return"hi i am in c ";
}

}
contract D is A,B,C{
     function fun() public pure override(A,B,C) returns(string memory){
return"hi i am in d ";
}
// let talk about how virtual and override works
   //if u have to edit function in inherited class use "virtual" keyword on function that wirtten in parent class
  //basically if you have to change your function in inherited class use "override" keyword
//advance
  // 1. (class A)  function fun used virtual keyword so that we are eble to edit function in derived class
  // 2. (class B is A) edit fun by override enble it to edit in derived class by virtual
  // 3. (class C is A,B) now if you override same function again
            // you have to tell override in cricle bracket that where the fun function existes
            //like this "override(A,B)" then you are able to edit the function
 //Note:- if you override the  function in derived class And you want to override it again in another drived class
    // use override like this  "override(A,B)" it means 
    // that where the function are present         


}