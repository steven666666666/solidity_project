// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BoolExample {
    bool public isActive;

    mapping(address => bool) public isMember;

    event Activated(address user, bool status);

    function toggle() public {
        isActive = !isActive;
    }

    function join() public {
        require(!isMember[msg.sender], "Already a member");
        isMember[msg.sender] = true;
        emit Activated(msg.sender, true);
    }

    function checkEven(uint256 x) public pure returns (bool) {
        return (x % 2 == 0);
    }
}
