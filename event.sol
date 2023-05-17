// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
//if we have to send anything in blockchain (way are:-)
// make state variable and state variable stored in storage level(blockchain)
// storage mean data avaible at blockchain
contract Event{
// event
  //use event if user want to interact with over dapp (like output)
 //  if you have to put data that is not acessable and have constant value
 //  which mean you cannot change the value or variable
 //  it this case we have to use event

 event balance(address,string,uint);
 function setdata(uint _val)public {
       emit balance(msg.sender,"has value",_val);
 }  
       

}
contract chatapp{
       //indexed keyword meaning
         //if u have to know where your money spend use keyword indexed
         //it will create a list of your transction, where you spend your money
         // only three indexed used in one event
       event chat(address indexed _from,address _to,string _msg);
       function sendmsg(address to_,string memory msg_)public{
       emit chat(msg.sender,to_,msg_);
       // only three indexed used in one event
       }
       
}