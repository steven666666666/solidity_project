// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    string public msg;

    constructor(string memory initMsg) {
        msg = initMsg;
    }

    function setMsg(string memory newMsg) public {
        msg = newMsg;
    }

    function getMsg() public view returns (string memory) {
        return msg;
    }
}
