# votesystem

This is a simple Solidity smart contract that I built to understand how voting systems work on the blockchain.
This contract creates a small voting system where:
1. There are two candidates
2. one can vote only once.
make voting fair.

how my code works:
1. Using a mapping that keeps track of who has already voted.
mapping(address => bool) public hasVoted;
2. vote counts are stored in public variables.
like:   uint public candidate1Votes;
        uint public candidate2Votes;
4. we created candidate id and verified it for voating.
like: vote(1) for candidate 1
      vote(2) for candidate 2
6. getVotes() function returns the total votes for both candidates.
7. voating is fair as only one vote can be cast by each candidate.

I built this using Solidity ^0.8.0 and tested in Remix IDE.
Made By: Jahan Sangeet Kamble
r. no: 25CS10054
dept: computer science and engineering. 29'
