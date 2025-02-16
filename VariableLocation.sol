// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract VariableLocation {
    uint256[] public arr;

    function addArr(uint256 a) public {
        arr.push(a);
    }

    function processMemory() public pure returns (uint256) {
        uint256[] memory nums = new uint256[](3);
        nums[0] = 1;
        return nums[0];
    }

    function sum(uint256[] calldata numbers) external pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
        return total;
    }

    function doubleMemory(uint256[] memory data) public pure  returns (uint256[] memory){
        for (uint256 i = 0; i < data.length; i++) {
            data[i] *= 2;
        }
        return data;
    }
}
