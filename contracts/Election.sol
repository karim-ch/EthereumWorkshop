pragma solidity >=0.4.21 <0.6.0;


// contract Election{
//     string public candidate;

//     constructor() public{
//         candidate = "Ben Ali";
//     }
// }


contract Election{
    //Candidate Model
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    // Store candidates
    mapping(uint => Candidate) public candidates;

    // Store voters
    // mapping(address => bool) public voters;

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

    // function vote(uint _candidateId) public {
    //     require(voters[msg.sender] != true, "Address already voted!");
    //     require(_candidateId > 0 && _candidateId <= candidatesCount, "Must enter a valid id");
    //     voters[msg.sender] = true;
    //     candidates[_candidateId].voteCount ++;
    // }
}