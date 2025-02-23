// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract VisibilityExample {

    uint private secretNumber = 10;

    // public
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // private 
    function getSecret() public view returns (uint){
        return secretNumber;
    }

    // internal

    function calculate(uint a,uint b) internal pure  returns (uint){
        return a*b;
    }

    // external
    function withdraw() external {

    }

    function call() public  {
        // withdraw();
        this.withdraw();
    }

}
