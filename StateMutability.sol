// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StateMutability{

    uint public count = 10;

    // pure
    function add(uint a,uint b) public pure returns (uint){
        return a+b;
    }

    // view
    function getCount() public view returns (uint){
        return count;
    }

    // nonpayable（默认行为）
    function increment() public {
        count +=1;
    }

    // payable
    function deposit() public payable {
        require(msg.value > 0, 'Deposit value must be greater than 0');
    }




}