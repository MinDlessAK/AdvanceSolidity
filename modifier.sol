//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Modifier{
    address public owner=msg.sender;
    modifier onlyOwner(){
        require(owner==msg.sender,"you are not owner");
        _;//when modifier see this "_;" it return to fucntion and after excuted that paricular function 
        //it comes again in modifier to check is thier any other code remaining
    }

function startAuction()public onlyOwner view{
     

}
function stopAuction() public onlyOwner view{
     

}
function checkstatus()public  onlyOwner view{
    

}


}