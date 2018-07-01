pragma solidity ^0.4.17;

contract Loads {
  address[16] public currentLoads;

  function grabLoad(uint loadId) public returns (uint) {
    require(loadId >= 0 && loadId <= 15);

    currentLoads[loadId] = msg.sender;

    return loadId;
  }

  function getLoads() public view returns (address[16]) {
    return currentLoads;
  }
}  

