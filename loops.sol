//SPDX-License-Identifier:GPL-MIT
pragma solidity ^0.8.0;
//loops dont work on contract level they work under the function
contract loops{

function loop()public pure returns(uint) {
        uint count =0;
//for loop
        // for(uint i=0;i<10;i++){
        // count =count+5;
        // }
uint j=0;
//while loops

// while(j<10){
//     count =count+5;
//     j++;
// }
//do while  loops
     do{
    count=count+5;
    j=j+2;
  }
    while(j<10);
return j;
      }


}