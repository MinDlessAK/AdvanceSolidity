//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract test{
    
   
    function incc(Call _test,uint x) external pure{
         _test.inc(x);
    }
      function decc(address _test,uint x) external pure{
        Call test=Call(_test);
         test.dec(x);
    }
      function mull(address _test,uint x) external pure{
         Call(_test).mul(x);
    }
     function setXandSendEther(Call _callee, uint _x) public payable {
        (uint x, uint value) = _callee.setXandSendEther{value: msg.value}(_x);
    }

}
contract Call{
    uint public value;
    uint public x;

      function setXandSendEther(uint _x) public payable returns (uint, uint) {
        x = _x;
        value = msg.value;

        return (x, value);
    }
   
    function inc(uint _x)external pure returns(uint){
      return _x+=1;
    }
     function dec(uint _x)external pure returns(uint){
      return _x-=1;
    }
     function mul(uint _x)external pure returns(uint){
      return _x*=1;
    }
}