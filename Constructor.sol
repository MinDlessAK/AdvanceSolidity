// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
//Constructor
  //Executed only once
  //you can create only one constructor and that is optional
  // A defualt constructor is created by compiler if there is no defined constructor
  
contract Constructor {
    uint public  count;

//    constructor (){
//     count=1;
//    }
   //2 ways to discribe Constructor

    constructor (uint new_count){
    count=new_count;
   }

}