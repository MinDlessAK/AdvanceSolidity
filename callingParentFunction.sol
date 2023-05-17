// SPDX-License-Identifier: GPL-3.0
pragma solidity  ^0.8.17;
//there are 2 way of calling
 // driect calling
 // use super keyword
contract a{
    event log(string name, uint age);
       function fun1()public virtual{
           emit log("A.fun1",21);
       }
        function fun3()public virtual{
           emit log("A.fun1",21);
       }
}
contract b is a{
     function fun1()public virtual override{
           emit log("b.fun1",31);
           a.fun1();//driect calling

       }
        function fun3()public virtual override{
           emit log("b.fun1",31);
           super.fun3();// it check  in all class where it find first it will stop there
            // in oder to most based like to most drived class
       }

}
contract c is a{
     function fun1()public virtual override{
           emit log("c.fun1",41);
       }
        function fun3()public virtual override{
           emit log("c.fun1",41);
       }

}
contract d is b,c{
    //inheritance follow depth first sreach teachnique
     function fun1()public virtual override(b,c){
           emit log("d.fun1",51);
           b.fun1();
       }
        function fun3()public virtual override(b,c){
           emit log("d.fun1",51);
           super.fun3();// it will print class c fun3 function
           //in oder to rigth->left at end is c so according to depth frist sreach c comes first too print
           
       }

}