// SPDX-License-Identifier: GPL-3.0
// Version of compiler
pragma solidity >=0.7.0 <0.9.0;

contract sensitiveData {

    // variable that stores owner address
    address private owner;

    // private string variable
    string private sensitive;

    constructor(string memory _data) {
        owner = msg.sender;
        sensitive = _data;
    }

    function changeData(string memory _data) public {

        require (msg.sender == owner, "you are not the owner");

        sensitive = _data;
    }

    function getData() public view returns (string memory) {

        require (msg.sender == owner, "you are not the owner");

        return sensitive;
    }
}
