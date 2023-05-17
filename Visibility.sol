// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;

contract FFunction {
uint age =122;
function f1() public pure returns(uint)
{ 
       return 1;
}
function f2 () private pure returns(uint)
{ 
       return 2;
}
function  f3() internal pure returns(uint)
{ 
       return 3;
}
function  f4() external pure returns(uint)
{ 
       return 4;
}
uint bx=f3();
}

contract b is FFunction{
  uint internal bg =f3();
}