// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract StructExample{

    struct Person{
        string  name;
        uint age;
    }

    Person[] public persons;

    function add(string memory _name,uint age) public {
        persons.push(Person(_name,age));
    }

    function get(uint index) public view returns (Person memory){
        require(index <persons.length,'out of range');
        return persons[index];
    }





}