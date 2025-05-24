// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // this is the solidity version 

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    // myFavoriteNumber by default is initialized to 0 if no value is given
    uint256 myFavoriteNumber; // = 0

    // uint256[] listOfFavoriteNumbers; // [0, 78, 90]

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person[] - dynamic array (no max value). Person[3] - static array (max values is 3)
    Person[] public listOfPeople; // a blank array is defaulted to []. Called an empty list

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    // memory, calldata, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        // listOfPeople.push(newPerson);
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}