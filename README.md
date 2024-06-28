# Smart Contract: mod1

This Solidity smart contract (`mod1.sol`) demonstrates the usage of `require()`, `assert()`, and `revert()` statements for error handling and conditions in Ethereum smart contracts.

## Functions

### `deposit()`

Function to deposit Ether into the contract.

- **Modifiers**: `payable`
- **Requirements**:
  - Requires that the deposit amount is greater than zero (`require()` statement).
- **Events**:
  - Emits `RequireExecuted` event upon successful execution.

### `withdraw(uint256 amount)`

Function to withdraw Ether from the contract.

- **Parameters**:
  - `amount`: Amount of Ether to withdraw.
- **Requirements**:
  - Requires that the withdrawal amount is greater than zero and not exceed the sender's balance (`require()` statements).
- **Events**:
  - Emits `RequireExecuted` event upon successful execution.

### `transfer(address to, uint256 amount)`

Function to transfer Ether to another address.

- **Parameters**:
  - `to`: Recipient address.
  - `amount`: Amount of Ether to transfer.
- **Requirements**:
  - Requires that the recipient address is valid (`to != address(0)`) and the transfer amount is greater than zero and not exceed the sender's balance (`require()` statements).
- **Events**:
  - Emits `RequireExecuted` events upon successful execution.

### `getBalance()`

Function to retrieve the balance of the caller.

- **Returns**: `uint256`
- **Usage**: Returns the balance of the caller without modifying state.

### `checkBalance()`

Function to check the balance of the caller with an assertion.

- **Assertions**: Asserts that the balance of the caller is never negative (`assert()` statement).
- **Events**:
  - Emits `AssertExecuted` event upon successful execution.

### `demoRevert()`

Function to demonstrate the use of revert.

- **Revert**: Always reverts the transaction with the message "This is a revert statement" (`revert()` statement).
- **Events**:
  - Emits `RevertExecuted` event upon successful execution.
---
