 
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    //without a value favourite number is inizialized at 0
    uint256 favoriteNumber;

    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // array of people
    People[] public people;
    //the mapping lets avaiable the search of a key and returns a value
    mapping(string => uint256) public nameToFavoriteNumber;
    
    //sets the value of favouriteNumber
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    // reads the value of favouriteNumber
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    // inserts a new object in the array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //person added to the array
        people.push(People(_favoriteNumber, _name));
        //person added to the mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
