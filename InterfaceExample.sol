// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract InterfaceExample{

    // interface IERC20 {
    //     function transfer(address to,uint amount) external returns (bool);
        
    // }

}

contract ChildContract is InterfaceExample{
    function doSomething() public{}
}