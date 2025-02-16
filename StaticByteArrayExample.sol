// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StaticByteArrayExample {
    // 静态字节数组
    bytes4 public data = 0x12345678;

    function getByte(uint256 index) public view returns (bytes1) {
        require(index < 4, "index out of range");
        return data[index];
    }

    function setData(bytes4 newData) public {
        data = newData;
    }

    function toUint32() public view returns (uint32){
        return uint32(data);
    }

    function fromUint32(uint32 number) public pure returns (bytes4){
        return bytes4(number);
    }
}
