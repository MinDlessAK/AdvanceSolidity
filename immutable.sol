//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
//immutable
 // it only intailize within(inline) and on constructor
 //if we made immutable constant it can intailize by inline only
 //Immutable variables are like constants. 
 //Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
contract Immutable{
   address public immutable owner;//inline//lower then simple(comes in 2)
    address public constant owner2=address(1);//most lower in gas cost(comes in 3rd)
     address public  owner3=address(1);//high cost(comes in for cost 1)

   
   constructor(address _owner){
      owner=_owner;
   }
function I() public view returns(address){
  return owner;
}
function C() public pure returns(address){
  return owner2;
}
function S() public view returns(address){
  return owner3;
}
}
contract ImmuTable{
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}

