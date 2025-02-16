// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Address {
    address public owner;

    // 定义构造函数
    constructor() {
        owner = msg.sender;
    }

    function withdraw() public {
        require(msg.sender == owner, "only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    function addressThis() view  public returns (address) {
        return address(this);
    }

    function getBal() view public returns (uint){
        return owner.balance;
    }


    









}
