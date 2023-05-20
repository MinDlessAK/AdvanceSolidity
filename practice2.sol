//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract BitWise{
    function and(uint x,uint y)public pure returns(uint){
        return x & y;
    }
    function or(uint x,uint y)public pure returns(uint){
        return x | y;
    }
    function Xor(uint x,uint y)public pure returns(uint){
        return x ^ y;
    }
    function not(uint x)public pure returns(uint){
        return ~x;
    }
    function shiftleft(uint x,uint bits)public pure returns(uint){
        return x << bits;
    }
     function shiftright(uint x,uint bits)public pure returns(uint){
        return x >> bits;
    }
}