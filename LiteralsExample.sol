// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LiteralsExample {

    // 整型字面值
    uint256 public decimal = 123;
    uint256 public hexValue = 0xFF;
    uint256 public scientific=1e18;

    // 字符串字面值
    string public greeting = "Hello";
    //  string public multiLine = """
    //     Line 1
    //     Line 2
    // """;
    // 地址字面值
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // 布尔字面值
    bool public isActive = true;

    //十六进制字节字面值
    bytes public selector = hex"a9059cbb";

    //Unicode字面值
    string public emoji = unicode"🚀";


}