// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mod1 {
    mapping(address => uint256) private balances;

    event RequireExecuted(string message);
    event AssertExecuted(string message);
    event RevertExecuted(string message);

    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        emit RequireExecuted("Require statement has been ran in deposit");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(amount <= balances[msg.sender], "Insufficient balance");
        emit RequireExecuted("Require statements have been ran in withdraw");

        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function transfer(address to, uint256 amount) public {
        require(to != address(0), "Invalid recipient address");
        emit RequireExecuted("Require statement has been ran in transfer (address check)");

        require(amount > 0, "Transfer amount must be greater than zero");
        require(amount <= balances[msg.sender], "Insufficient balance");
        emit RequireExecuted("Require statement has been ran in transfer (balance check)");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function checkBalance() public {
        uint256 balance = balances[msg.sender];

        assert(balance >= 0);
        emit AssertExecuted("Assert statement has been ran in checkBalance");
    }

    function demoRevert() public {
        emit RevertExecuted("Revert statement has been ran in demoRevert");
        revert("This is a revert statement");
    }
}
