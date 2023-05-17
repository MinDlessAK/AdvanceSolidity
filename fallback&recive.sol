//SPDX-Lincense-Identifier:MIT
pragma solidity ^0.8.17;
// 1 ether equal to 10^18 gwie
//fallback
 //fallback function is to receive ether
 // fallback can receive ether with data
 //it can be define one per contract
//receive
//recieve function is to to  receive ether
 // receive can recieve ether only without data
 //receive should be payble always
//note:-both visibility should be external 
//if you use both then what happen
  //if you send data with ether then fallback is used
  //if you didn't send dat thrn receive will used


contract Fallback_receive{
    event log(string fun,address sender,uint value,bytes data);

     fallback()external payable{
        emit log("fallback",msg.sender,msg.value,msg.data);
     }
     receive()external payable{

     }
     function checkbalance()public view returns(uint){
        return address(this).balance;
     }
     


}