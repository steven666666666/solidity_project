// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ConstantExample{

     bytes32 public constant DEFAULT_HASH = keccak256("DEFAULT");

}

contract Token {
    // 通过构造函数初始化
    // string public immutable name; 
    address public immutable owner;

    constructor(string memory _name) {
        // name = _name;          // 运行时动态赋值
        owner = msg.sender;     // 部署时确定
    }
}

contract TimestampLogger {
    uint256 public immutable createdAt;

    constructor() {
        createdAt = block.timestamp; // 依赖区块时间
    }
}