pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Loads.sol";

contract TestLoads {
  Loads loads = Loads(DeployedAddresses.Loads());

  function testUserCanGetLoad() public {
    uint returnedId = loads.grabLoad(8);

    uint expected = 8;

    Assert.equal(returnedId, expected, "Get load of load ID 8 should be recorded.");
  }

  function testGetLoadGetterAddressByLoadId() public {

    address expected = this;

    address loader = loads.currentLoads(8);

    Assert.equal(loader, expected, "Owner of load ID 8 should be recorded.");
  }

  function testGetAdopterAddressByPetIdInArray() public {

    address expected = this;

    address[16] memory loader = loads.getLoads();

    Assert.equal(loader[8], expected, "Owner of load ID 8 should be recorded.");
  }

}