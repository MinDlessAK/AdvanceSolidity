// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
//revert
//it check condition with the help of if else statement
//revert is also known as custom error handling
//to use revert custom error feature use keyword "error" like this:-
//error throwError(string);// it cost low gas that why use custom error
contract REvert{
          address public owner =msg.sender;
        uint public age=25;
        error  throwerror(string,address);

//1.input validation(function parameter)
        function CheckRevert(uint _x) public{
            age +=5;
          if(_x>2){
            revert throwerror("Value of X is less then 2",msg.sender);
          }

        }
 //2.Access control(only accessed by owner)
        function OnlyOwner() public {
               if(owner!=msg.sender){
               revert("you are not the owner");
               }
               age-=2;
        }

 //Assert
 //it is used for bug checks and security check
    function  CheckOwnerShip() public view{
        assert(owner==msg.sender);

    }       



}