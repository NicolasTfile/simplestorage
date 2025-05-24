// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // "is" is the keyword for inheritance

    function store(uint256 _newNumber) public override {
        // To override a function. We need to include the virtual keyword in the parent contract, and the override keyword in the child contract
        myFavoriteNumber = _newNumber + 5;
    }
}