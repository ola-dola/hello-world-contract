// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Defines a contract named `HelloWorld`.
// A contract is a collection of functions and data (its state). Once deployed, a contract resides at a specific address on the Ethereum blockchain. Learn more: https://solidity.readthedocs.io/en/v0.5.10/structure-of-a-contract.html
contract HelloWorld {
    // Declares a state variable `message` of type `string`.
    // State variables are variables whose values are permanently stored in contract storage. The keyword `public` makes variables accessible from outside a contract and creates a function that other contracts or clients can call to access the value.
    string public message;
    string public salutation;

    // Similar to many class-based object-oriented languages, a constructor is a special function that is only executed upon contract creation.
    // Constructors are used to initialize the contract's data. Learn more:https://solidity.readthedocs.io/en/v0.5.10/contracts.html#constructors
    constructor() {
        // Accepts a string argument `initMessage` and sets the value into the contract's `message` storage variable).
        salutation = "Hello";
        message = string(abi.encodePacked(salutation, "World"));
    }

    // A public function that accepts a string argument and updates the `message` storage variable.
    function updateSalutation(string memory newSalut) public {
        salutation = newSalut;

        console.log("New Salutation is: ", message);
    }

    function greetSpecificUser(string memory name) public view returns (string memory) {
        console.log(salutation, " ", name);

        return string(abi.encodePacked(salutation, " ", name));
    }
}
