// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract VotingSystem {

    // Addresses
    mapping(address => bool) public hasVoted;

    // Vote counts for the candidates.
    uint public candidate1Votes;
    uint public candidate2Votes;

    //initializeing contract.
    constructor() {}

    // Function to vote.
    function vote(uint _candidateId) public {
        require(hasVoted[msg.sender] == false, "You can only vote once");

        if (_candidateId == 1) {
            candidate1Votes++;
        } else if (_candidateId == 2) {
            candidate2Votes++;
        } 
        // voting done markingg to sender.
        hasVoted[msg.sender] = true;
    }

    // returning values of total vote counts.
    function getVotes() public view returns (uint, uint) {
        return (candidate1Votes, candidate2Votes);
    }
}
