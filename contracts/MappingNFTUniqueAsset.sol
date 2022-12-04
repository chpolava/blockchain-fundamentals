// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
//pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol"; // contract for creating NFT's
import "@openzeppelin/contracts/utils/Counters.sol"; // Used for counting
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; // Used by ERC721 contract
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol"; // Used by ERC721 contract

// NFT's gets converted to IPFS (storage)
// Pinata NFT portal - to create and upload NFT's and generate unique hash

contract UniqueAsset1 is ERC721URIStorage{
using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

// string hash is mapped to an uint, every new hash gets a new incremented value.
  mapping(string => uint8) hashes;

  uint256 public _currentTime;
  //global variable 
  
constructor() public ERC721("UniqueAsset1", "UNA1") {}
// UNA1 is NFT code and UniqueAsset1 is the NFT name

// calldata is immutable temporary location that cannot be altered
// memory has only function scope and that memory gets released after function execution completes
function awardItem(address recipient, string calldata hash, string calldata metadata)
  public
  returns (uint256)
{
  require(hashes[hash] != 1);
  hashes[hash] = 1;
  _tokenIds.increment();
  uint256 newItemId = _tokenIds.current();
  _currentTime = block.timestamp;
  _mint(recipient, newItemId);
  _setTokenURI(newItemId, metadata);
  return newItemId;
}
}

//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2