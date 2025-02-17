// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArrayExample{

    uint[3] public  fixArray = [uint(1)];

    uint[] public  dynamicArray;

    uint[2][3] public  twoDimensionalArray = [[1,2],[10,20]];

    function modifyFixArray() public  {
        // fixArray = [3,4,5];
        fixArray[0]= 10;
       
    }

    function modifyDynamicArray() public {
       dynamicArray.push(1);
       dynamicArray.push(2); 
       dynamicArray.pop();
    }

    function createArray() public pure returns (uint[] memory) {

        uint[] memory memArray = new uint[](3);
        memArray[0] = 1;
        memArray[1]=2;
        memArray[2] = 3;
        return memArray;



    }

}