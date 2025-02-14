// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    string public meaasge;

    constructor(string memory initMsg) {
        meaasge = initMsg;
    }

    function setMsg(string memory newMsg) public {
        meaasge = newMsg;
    }

}
