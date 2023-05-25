//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
//hashing with keccak256
//keccak256 compute the keccak-256 hash of input
   //Creating a determinitic unique id from a input 
     //The main purpose of using keccak256 hashing is to create a 
     //deterministic unique identifier from an input
     // It provides a way to transform data into a standardized representation.
//commit-reveal scheme
  //commit-reveal scheme is a technique used in situations where information needs to be kept secret until a specific point
  //In this scheme, the input is hashed using keccak256 and the hash value is stored privately. 
  //Later, when the information needs to be revealed, the original input can be disclosed
  //Note:- its hash can be compared with the previously stored hash to verify its authenticity.
//compact cryptographic signature (by signing the hash instead of larger input)
  //Another benefit of using keccak256 hashing is for creating compact cryptographic signatures. 
  //Instead of signing the entire input, the hash of the input is signed.
  //By signing the hash, a smaller signature is generated while still providing the same level of security.
  //This approach is commonly used in cryptographic systems to optimize performance and reduce computational requirements.
//In summary, 
  // keccak256 hashing is a way to transform data into a unique and fixed-length representation. 
  //It is used for creating deterministic unique identifiers,
  // implementing commit-reveal schemes, 
  //and generating compact cryptographic signatures.
contract Hashing{
    function hash(
        string memory text,
        uint num,
        address addr
    )external pure returns(bytes32){
        return keccak256(abi.encodePacked(text,num,addr));
    }
    // Example of hash collision
    // Hash collision can occur when you pass more than one dynamic data type
    // to abi.encodePacked. In such case, you should use abi.encode instead.
 
    function collision(string memory _text,string memory name) external pure returns(bytes32){
        // encodePacked(AAA, BBB) -> AAABBB
        // encodePacked(AA, ABBB) -> AAABBB
        return keccak256(abi.encodePacked(_text,name));
    }
     function collisionSolution(string memory _text,string memory name) external pure returns(bytes32){
        return keccak256(abi.encode(_text,name));
    }
}
contract test{
    bytes32  public answer=0x60298f78cc0b47170ba79c10aa3851d7648bd96f2f8e46a19dbc777c36fb0c00;
    //// Magic word is "Solidity"
    function testHash(string memory _Word)external returns(bool){
        return keccak256(abi.encodePacked(_Word))==answer;
    }
}
