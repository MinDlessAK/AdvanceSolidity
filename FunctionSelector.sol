//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract test{
    function TestSelector(string calldata _data)external returns(bytes4) {
        return bytes4(keccak256(bytes(_data)));

    }
}


contract functionSelector{
    event Selector(bytes data);
    function getSelector(uint _amount) external{
       emit Selector(msg.data);  
    }

}
