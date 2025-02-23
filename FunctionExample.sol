// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// 内部调用
contract Example {
    function a() public pure returns (uint256) {
        return b();
    }

    function b() private pure returns (uint256) {
        return 123;
    }
}

contract Caller {
    function callExternal(address _contract) public pure returns (uint) {
        // 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B
       return  Example(_contract).a();

        // (bool success, ) = _contract.call(
        //     abi.encodeWithSignature("something()")
        // );
        // require(success, "Call failed");
    }

    function deposit() public  payable{
        
    } 
}



contract Receiver{
    function deposit() public payable {

    }


}

contract Sender{
    function sendETH(address _receiver) public payable {
        // 0x0fC5025C764cE34df352757e82f7B5c4Df39A836
        Receiver(_receiver).deposit{value:msg.value}();
    } 
}

contract MathOperations {

    function add(uint a,uint b) public pure returns (uint){
        return a+b;
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

    function deposit() public payable {

    }
}

contract Ownable{
    address public owner;

    modifier onlyOwner(){
        require(msg.sender == owner,'Not owner');
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    function transferOwnership(address newOwner) public onlyOwner{
        owner = newOwner;
    } 
} 


