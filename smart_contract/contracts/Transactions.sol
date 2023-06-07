//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount; //integer variable that will hold our number of transactions

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct { // like object
        address sender;  // type name of the property
        address receiver;
        uint amount;
        string message;
        uint timestamp;
        string keyword;
    }

    TransferStruct[] transactions; //array of object

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public{
       transactionCount += 1;
       transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword)); //used to store the transactions

       emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword); //used to transfer the amount
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
       return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount; 
    }
}