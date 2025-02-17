// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TransferContract{

    address public accountA;
    address public accountB;

    constructor(address _A,address _B){
        accountA = _A;
        accountB=_B;
    }

    function chargeToContract() public  payable {

    }

    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

    // 只能是合约地址向外部账户转账，不能是外部账户向外部账户转账
    function transferFromAtoB(uint amount) public   {
        require(msg.sender == accountA,'Only account A can initiate the transfer');
        payable (accountB).transfer(amount);
    }

}