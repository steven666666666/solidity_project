// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract requireExample {
    bool public open = false;

    address[] public addressArr;

    

    function requreTest() public view {
        require(open, "Error : Open is not True");
    }

    function push(address _addr) public {
        addressArr.push(_addr);
    }

    function transfer(address to, uint256 amount) public view {
        require(to != addressArr[0], "Invalid address");
        require(msg.sender.balance >= amount, "Insufficient balance");
    }


    function testBool(address to ) public pure  returns (bool){
        to = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

        return 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 != 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    }


    function getBal() public view  returns (uint) {
        return msg.sender.balance;
    }



    function withdraw(uint amount) public view  {
        uint initialBalance = address(this).balance;

        assert(address(this).balance == initialBalance -amount);
    }




    function buyItem(uint price) public view  {
        if (msg.sender.balance < price){
            revert();
        }
    }
}
