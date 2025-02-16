// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    // 状态变量
    uint256 public count;

    uint256 public data;

    function increment() public {
        count++;
    }

    function getAddress() public view returns (address) {
        return address(this);
        // 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47
        // 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47
    }

    function calculate() public pure returns (uint256) {
        // 临时变量
        uint256 temp = 10;
        return temp;
    }

    function getSender() public view returns (address) {
        // 全局变量
        return msg.sender;
    }

    function logData() external pure  returns (bytes memory){
        // 直接引用 calldata
        bytes calldata data = msg.data;
        // 记录原始调用数据
        return data;
       
    }
}


