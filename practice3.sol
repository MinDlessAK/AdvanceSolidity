// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract test{
function Call(string calldata to)external returns(bytes4){
      return bytes4(keccak256(bytes(to)));
}
}
contract getSelector{
   event log(bytes);
   function selector()external{
      emit log(msg.data);
   }
}