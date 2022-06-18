//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Whitelist {

  // max amount of addresses which can be on whitelist
  uint8 public whitelistedAddressesLimit;

  // keep track of number of addresses whitelisted till date
  uint8 public amtAddressesWhitelisted;

  mapping(address => bool) public whitelistedAddresses;

  constructor(uint8 _whitelistedAddressesLimit) {
    whitelistedAddressesLimit = _whitelistedAddressesLimit;
  }

   function addAddressToWhitelist() public {
    require(!whitelistedAddresses[msg.sender], "Sender already part of whitelist programme");
    require(amtAddressesWhitelisted < whitelistedAddressesLimit, "Maximum whitelist particpants reached!");

    whitelistedAddresses[msg.sender] = true;
    amtAddressesWhitelisted += 1;

   }






}