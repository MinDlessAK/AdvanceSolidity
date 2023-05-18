//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Kaccek{
    function Hash(string memory _message,address addr,uint _x)public pure returns(bytes32){
        return keccak256(abi.encodePacked(_message,addr,_x)); 

    }
    function Encode(string memory text0,string memory text1)external pure returns(bytes memory){
         return abi.encode(text0,text1);

    }
    function EncodePacked(string memory text0,string memory text1)external pure returns(bytes memory){
        return abi.encodePacked(text0,text1);
    }
    function collision(string memory text0,uint _x,string memory text1)external pure returns(bytes32){
        return keccak256(abi.encodePacked(text0,_x,text1));
    }

}