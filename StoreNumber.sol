// SPDX-License-Identifier: GPL - 3.0
pragma solidity >=0.8.0 <0.9.0;

contract StoreNumber {
    // 1. Create a variable that stores a positive number (uint)
    uint256 private Number;

    // 2. Function to modify the value
    function ModifyNumber(uint256 newNumber) public {
        Number = newNumber;
    }

    // 3. Function to return the value
    function getNumber() public view returns (uint256) {
        return Number;
    }
}
