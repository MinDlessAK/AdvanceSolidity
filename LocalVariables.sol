// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;

contract LocalVariable {
//About string
  //there are some data types that stored in storage by Default like:- string
  //string stored in storage level by default thats why string are declare in state variables
  //if you have to use string inside funtion without intialaztion at state level use keyword "memory"
  // like this " string memory name="akash"; "
  //"Memory" keyword  can't used at contract(state) level


//About Local Variables
    //Local Variable declare inside the function
    //It stored in stack(like when u use the code) of contract not on storage of contract
    //Don't cost gas
   //there are some data types that stored in storage by Default like:- string  
   function store()pure public returns(uint){
        //age is local variable bcz it declare inside the function
         uint age=10;
         return age;
   } 



}