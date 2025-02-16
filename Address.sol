// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Address {
    address public owner;

    address payable public recipient;

    address payable public A;

    address payable public B;

    // 定义构造函数
    constructor() {
        owner = msg.sender;
    }

    function setReciption(address payable _recipient) public {
        require(msg.sender == owner, "Only owner can set recipient");
        recipient = _recipient;
    }

    function sendETH() public payable {
        require(recipient != address(0), "Recipient not set");
        recipient.transfer(msg.value);
    }

    function withdraw() public {
        require(msg.sender == owner, "only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    function addressThis() public view returns (address) {
        return address(this);
    }

 

    function setA(address payable _A) public {
        A = _A;
    }

    function setB(address payable _B) public {
        B = _B;
    }

    function transform(uint256 bal) public payable {
        A.transfer(bal);
    }

   

    function getBal() public payable returns (uint){
        return msg.value;
    }

    // 接收以太币的函数
    function receiveBal() public   payable {}
}
