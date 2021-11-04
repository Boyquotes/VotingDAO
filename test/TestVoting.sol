pragma solidity >=0.4.21 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voting.sol";

contract TestVoting {

  function testItStoresAValue() public {
    Voting voting = Voting(DeployedAddresses.Voting());

    voting.set(89);

    uint expected = 89;

    Assert.equal(voting.get(), expected, "It should store the value 89.");
  }

}
