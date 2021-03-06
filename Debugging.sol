// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.0;

contract Debugging {

    uint[] private vars;
    
    function  assignment() {
        uint myVal1 = 1;
        uint myVal2 = 2;
        assert(myVal1 == myVal2);
    }

    function memoryAlloc() {
        string memory myString = "test";
        assert(bytes(myString).length == 10);
    }

    function storageAlloc() {
        vars.push(2);
        vars.push(3);
        assert(vars.length == 4);
    }

}
