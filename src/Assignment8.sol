// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";    
import "@openzeppelin/contracts/access/Ownable.sol";

contract Assignment8 is ERC721URIStorage, Ownable {
    private uint _tokenIdCounter;

    constructor() ERC721("MyNFTCollection", "MNFT") {
        _tokenIdCounter = 1;
    }

    function mintNFT(string memory _tokenURI) external onlyOwner {
        uint tokenId = _tokenIdCounter;

        _mint(msg.sender, tokenId);

        _setTokenURI(tokenId, _tokenURI);

        _tokenIdCounter++;
    }
}
