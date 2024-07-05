// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    
    int256 private result;

    function add(int256 a, int256 b) public returns (int256) {
        result = a + b;
        return result;
    }

    function subtract(int256 a, int256 b) public returns (int256) {
        result = a - b;
        return result;
    }

    function multiply(int256 a, int256 b) public returns (int256) {
        result = a * b;
        return result;
    }

    function divide(int256 a, int256 b) public returns (int256) {
        require(b != 0, "Division by zero is not allowed"); //require
        result = a / b;
        return result;
    }

    function getResult() public view returns (int256) {
        return result;
    }

    function resetResult() public {
        result = 0;
    }

    function testAssert() public view {
        // Assert dapat di negative si result
        assert(result >= 0);
    }

    // Example function using revert
    function testRevert(bool condition) public pure {
        if (!condition) {
            revert("Condition failed, reverting transaction");
        }
    }
}
