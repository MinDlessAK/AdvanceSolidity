// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
 contract Golobale{
    function glo()public view returns(uint block_no,uint timestamp,address sender){
     
     return(block.number,block.timestamp,msg.sender);
        
    }
 } 