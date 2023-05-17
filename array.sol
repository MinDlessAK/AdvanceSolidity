//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.17;
contract ArrayShift{
    uint[] public arr;
    function example() public{
        arr=[1,2,3];
        delete arr[1]; //[1,0,3]
    }
    function test1() external{
        arr=[1,2,3,4,5];
        delete arr[2]; 
        //[1,2,0,4,5,6]
        assert(arr[0]==1);
        assert(arr[1]==2);
         assert(arr[2]==0);
        assert(arr[3]==4);
        assert(arr[4]==5);
        assert(arr.length==5);
    }
    //Remove
     //push all element on left side expect one that you want to delete
     //then remove the last element
     //[1,2,3] -- remove(1) ---> [1,3,3] -->[1,3]
     //[1,2,3,4,5,6] -- remove(2) -->[1,2,4,5,6,6] -->[1,2,4,5,6]
    function remove(uint _index) public{
         require(_index<arr.length, "index out of bound");
         for (uint i=_index;i<arr.length-1;i++){
            arr[i]=arr[i+1];
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












