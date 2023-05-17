// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
contract Enum{
    enum user{Akash,priyanshu,shubham}
     user public u1=user.priyanshu;
    uint public lottery=1000;
    function owner() public{
        if(u1==user.priyanshu){
            lottery=0;
        }
        else if(u1==user.Akash){
             lottery=1000;
        }
        else{
            lottery=1000;
        }
    }
}