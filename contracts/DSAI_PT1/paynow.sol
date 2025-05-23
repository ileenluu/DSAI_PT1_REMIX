// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";
contract paynow{
    address owner;
    address payer;
    address payee;
    uint amount;
    constructor(){
        owner = msg.sender;
        console.log("Owner: %s",msg.sender);
    } 
    function weixin (address payer1,address payee1, uint amount1) public{
        payer = payer1;
        payee = payee1;
        amount  = amount1;
        console.log("Pay %s",amount);   
    }
    function transaction() public view returns (address, address, uint){
        return(payer, payee, amount);
    }
}