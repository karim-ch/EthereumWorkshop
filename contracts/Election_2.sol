pragma solidity >=0.4.21 <0.6.0;

contract Election_2{

    //Candidate Model
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    //Store candidates
    mapping(uint => Candidate) public candidates;

    //Number of candidates
    uint public candidatesCount;

    constructor() public{
        addCandidate("Nabil");
        addCandidate("Kais");
    }

    /*
    * Internal functions are the same as private, except that it's also accessible to contracts
    that inherit from this contract.
    */
    function addCandidate(string memory _name) internal {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}