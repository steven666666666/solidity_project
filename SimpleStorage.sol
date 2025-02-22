// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    uint256 private storedData;

    address public owner;

    event ValueChanged(uint256 newValue);

    function set(uint256 _value) public {
        storedData = _value;
        emit ValueChanged(_value);
    }

    function get() public view returns (uint256) {
        return storedData;
    }

    // fallback() external payable {
    //     revert("Function not found");
    // }

    // Receive 函数（接收 ETH）
    receive() external payable {}
    // 修饰器
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
    // 结构体
    struct Product {
        uint256 id;
        string name;
        uint256 price;
    }

    Product[] public products;

    // 枚举
    enum Status{Pending,Approved,Rejected}

    Status public proposalStatus;

    // 接口
//    interface IERC20 {
//     // function transfer(address to, uint256 amount) external returns (bool);
// }
}
