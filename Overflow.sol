// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
// change version into ^0.5.0 for overflow
contract Overflow{
     uint8 public money=255;
     function setter() public{
        money = money+1;
     }
}