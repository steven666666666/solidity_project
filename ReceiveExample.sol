// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReceiveExample {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function deposit() public payable {}
}

contract FallbackExample {
    event Log(string message, uint256 amount, uint256 gas);

    fallback() external payable {
        emit Log("Fallback called", msg.value, gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
