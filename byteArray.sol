//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;
//bytes array are immutable
contract array
{
    bytes3 public b1;
    bytes2 public b2;
    bytes public b3="abc";
    function setter()public {
        b1='abc';
        b2='ab';
    }
    function pushElement() public {
        b3.push('d');
    }
    function getElement(uint i) public view returns(bytes1){
        return b3[i];

    }
}