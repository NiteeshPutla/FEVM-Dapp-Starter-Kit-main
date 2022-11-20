// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract DataBoard {
  
  string data;
  mapping(string => address) dataGroup;

  function setNotice(string memory _data) public {
    data = _data;
    dataGroup[_data] = msg.sender;
  }

  function getNotice() public view returns (string memory) {
    return data;
  }

  function getUserByNotice(string memory _notice) public view returns (address) {
    return dataGroup[_data];
  }
  
}