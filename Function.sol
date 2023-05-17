// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
//function type
  // 1.view
  //2.pure
 //view
   //it read the state variable but cannot write
 //pure
  //it read and write local virable only
// to change state variable dont use view and pure

contract FFunction {
uint age =122;
function getter () public view returns(uint)
{ 
       return age;
}

}