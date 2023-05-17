// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
 contract  Storage{

     string[] public student=["ravi","mita","gita"]; //this is state level
  // first thing storage at state level(permanent memory)
  // AND memory at local level(temprary memory)
      function mem() public view{
           string[] memory s1=student; // s1 is local level
           s1[0]="akash";
      }
// discuss above function
  //s1 create a copy of student bcz student have diffrent memory
  //if you change anything  it will change only in s1 not in student bcz both have diffrent memory


       function sto() public{
           string[] storage s1=student;
           s1[0]="priyanshu";
      }
//Discuss the above function
 //s1 didn't create copy here bcz both s1 and student have same memory(permanent) type      
 // so if you change anything it will changed in student also

 }