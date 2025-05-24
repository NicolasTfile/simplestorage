// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // Solidity version

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts; // type visibility name

    function createSimpleStorageContract() public {

        SimpleStorage newSimpleStorageContract = new SimpleStorage(); // assigned an instance of SimpleStorage contract to newSimpleStorageContract

        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
       
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
    
}