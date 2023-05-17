//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract array 
{
    //fixed array
// uint[5] public arr=[10,20,30,40,50];

// function setter(uint index,uint value)public 
// {
//     arr[index]=value;
// }
// function length() public view returns(uint)
// {
//     return arr.length;
// }
  uint[] public arr;
  function remove(uint _index) public{
         require(_index<arr.length, "index out of bound");
         for (uint i=_index;i<arr.length-1;i++){
             arr[i]=arr.length+1;
         }
         arr.pop();
    }
    function test() external{
        arr=[1,2,3,4,5];
        remove(2);
        //[1,2,3,4,5,6]
        assert(arr[0]==1);
        assert(arr[1]==2);
        assert(arr[2]==4);
        assert(arr[3]==5);
        assert(arr.length==4);
        arr=[1];
        remove(0);
        assert(arr.length==0);
    }
}
