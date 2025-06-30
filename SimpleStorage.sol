// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {

    uint256 public myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; 

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual{
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addFriend(uint256 _favoriteNumber, string memory name) public {
        listOfPeople.push(Person({favoriteNumber:_favoriteNumber, name: name}));
        nameToFavoriteNumber[name] = _favoriteNumber;
    }

}


contract SimpleStorage2 {

    uint256 public myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; 

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addFriend(uint256 _favoriteNumber, string memory name) public {
        listOfPeople.push(Person({favoriteNumber:_favoriteNumber, name: name}));
        nameToFavoriteNumber[name] = _favoriteNumber;
    }

}


