# Calculator Smart Contract

This smart contract implements basic arithmetic operations and demonstrates the usage of `require`, `assert`, and `revert` statements in Solidity.

## Functions

### `add(int256 a, int256 b)`

Adds two integers `a` and `b` and updates the `result` variable.

### `subtract(int256 a, int256 b)`

Subtracts integer `b` from integer `a` and updates the `result` variable.

### `multiply(int256 a, int256 b)`

Multiplies two integers `a` and `b` and updates the `result` variable.

### `divide(int256 a, int256 b)`

Divides integer `a` by integer `b` and updates the `result` variable. Requires `b` to be non-zero.

### `getResult()`

Returns the current value of the `result` variable.

### `resetResult()`

Resets the `result` variable to zero.

### `testAssert()`

Checks if `result` is non-negative using `assert`. If `result` is negative, the transaction reverts.

### `testRevert(bool condition)`

Checks the given `condition` and reverts the transaction with a message if `condition` is `false`.

