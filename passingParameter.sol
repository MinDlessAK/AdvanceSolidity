// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
contract passingParameter{
string public name;
uint public age;

constructor(string memory _name,uint _age){
     name=_name;
     age=_age;

}

     
}
contract b{
    string public add;
    uint public salary;
    constructor(string memory _add,uint _salary){
     add=_add;
     salary=_salary;

}
   
}
contract c is passingParameter("priyanshui",21),b("delhi",2300000){


}
contract D is passingParameter,b{
    constructor() passingParameter("akash",21) b("mumbai",200000){

    }


}
contract E is passingParameter,b{
    
    constructor(string memory _name,uint _age,string memory _add,uint _salary) passingParameter(_name,_age+2) b(_add,_salary){
              
    }


}
