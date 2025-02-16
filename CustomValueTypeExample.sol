// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

type MyUint is uint256;

contract CustomValueTypeExample{

    MyUint private myValue;

    constructor(MyUint _value){
        myValue = _value;
    }

    function getValue() external view returns(MyUint) {
        return myValue;
    }

    function setValue(MyUint _value) external {
        myValue = _value;
    }

}