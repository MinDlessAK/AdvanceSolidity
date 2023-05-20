//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

//call function with thier input
interface Token{
    function transfer(address ,uint)external;
}
contract token{
    address public sender;
    uint public x;
    function transfer( address _sender ,uint  _x ) external   returns(address,uint){
        sender=_sender;
        x=_x;
       return(sender,x);
    }
     function decode(bytes calldata data)external  returns(address sender,uint x){
     (sender,x)=(abi.decode(data,(address,uint)));
}
  
}

contract Abiencode{
     function Testcall(address to,uint amount) external returns(bytes memory)  {
         (bool ok,bytes memory data)=to.call(abi.encodeWithSelector(Token.transfer.selector,msg.sender,amount));
           require(ok,"call failed");
           return data;
     }
    //  function Testcall(address to,bytes calldata data) external returns(bytes memory)  {
    //      (bool ok,)=to.call(data);
    //        require(ok,"call failed");
    //  }
// function encodesignature(address _to,uint amount)external pure returns(bytes memory){
//     return abi.encodeWithSignature("transfer(address,uint256)",_to,amount);
// }
// function encodeSelector(address _to,uint amount)external pure returns(bytes memory){
//     return abi.encodeWithSelector(Token.transfer.selector,_to,amount);
// }
// function encodcall(address _to,uint amount)external pure returns(bytes memory){
//     return abi.encodeCall(Token.transfer,(_to,amount));
// }
 

 
}