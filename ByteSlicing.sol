// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ByteSlicing {
    function sliceBytes(
        uint256[] memory data,
        uint256 start,
        uint256 end
    ) public pure returns (uint256[] memory) {
        // 进行切片操作
        return data[start:end];
    }
}
