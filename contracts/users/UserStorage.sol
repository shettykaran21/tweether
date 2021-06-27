// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.6;

contract UserStorage {
  struct Profile {
    uint id;
    bytes32 username;
  }

  uint latestUserId = 0;

  mapping(uint => Profile) profiles;

  function createUser(bytes32 _username) public returns(uint) {
    latestUserId++;  

    profiles[latestUserId] =  Profile(latestUserId, _username);

    return latestUserId;
  }  
}
