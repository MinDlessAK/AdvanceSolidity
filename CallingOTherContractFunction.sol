//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//calling function & send Ether from other contract 
contract CallTestContract{
// function setX(address _test,uint _x) external{
//     //we take address as input beacuse we have to call function of other contract
//     //that address allow u to communicate with thier contract function

//       testcontract(_test).setX(_x);
// }
function setX(testcontract _test,uint _x) external{
    //this way you wloudn't have to take address as input
    // you can make _test type(testcontract) that way u can get thier function acessable
      _test.setX(_x);
}
function getX(testcontract _test) external view returns(uint){
     return _test.getX();
}
function setXandSEndEther(testcontract _test,uint _x) external payable{
         _test.setXandReceiveEther{value:msg.value}(_x);      
  }



}



contract testcontract{

uint public x;
uint public value=123;
function setX(uint _x) external{
    x=_x;
}
function getX() external view returns(uint){
   return x;
} 
function setXandReceiveEther(uint _x)external payable{
    x=_x;
    value=msg.value;
}
function getXandValue() external view returns(uint, uint){
   return (x,value);

}
}