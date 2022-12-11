pragma solidity ^0.8.10;

contract GuessTheMagicWord {
    bytes32 public answer =
        0x60298f78cc0b47170ba79c10aa3851d7648bd96f2f8e46a19dbc777c36fb0c00;
        //0x60298f78cc0b47170ba79c10aa3851d7648bd96f2f8e46a19dbc777c36fb0c00
        //7ead9d0680addca94bbfaeec63e17c1e48ba89c1a9667ee7a43e6be652deeb7d
    bytes32 public guessAnswer;
    // Magic word is "Solidity"
    function guess(string memory _word) public returns (bool) {
        guessAnswer = keccak256(abi.encodePacked(_word));
        return keccak256(abi.encodePacked(_word)) == answer;
    }
}