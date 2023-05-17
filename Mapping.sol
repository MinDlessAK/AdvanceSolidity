// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
struct student{
    string name;
    uint class;
}
contract Mapping{
   mapping(uint=>string) public data1;
   mapping(uint=>student) public data2;

   function Setter(uint keys,string memory value)public{
       data1[keys]=value;
   }

   function Set(uint keys,string memory _name,uint _class)public{
       data2[keys]=student(_name,_class);
   }

}