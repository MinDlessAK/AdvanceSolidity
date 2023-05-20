//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
//call function with thier input
contract XYZ{
    function someFuncWithManyInputs(
    uint x,uint y,uint z,address a,bool b,string memory c
     ) public pure returns(uint,uint,uint,address,bool,string memory){
       return (x,y,z,a,b,c);
    }

    function callfunc()external pure returns(uint,uint,uint,address,bool,string memory){
        //in this case the oder of input should be same as called function input
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
         
    }
    function KEYvalue()external pure returns(uint,uint,uint,address,bool,string memory){
        //oder dosen't matter here
        return someFuncWithManyInputs({
          a:address(0),
          b: true,
          c: "akash",
          x:11,
          y:22,
          z:33
        });
    }
}
