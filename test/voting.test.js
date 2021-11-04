const Voting = artifacts.require("./Voting.sol");

contract("Voting", accounts => {
  it("...should store the value 89.", async () => {
    const votingInstance = await Voting.deployed();

    // Set value of 89
    await votingInstance.set(89, { from: accounts[0] });

    // Get stored value
    const storedData = await votingInstance.get.call();

    assert.equal(storedData, 89, "The value 89 was not stored.");
  });
});
