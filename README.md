# Sui Calculator

A simple calculator application implemented in Move for the Sui blockchain.  
Supports basic arithmetic operations and returns results as on-chain objects.

## Features

- Addition, subtraction, multiplication, and division of `u64` numbers
- Result objects include operation type and answer
- Handles invalid operators gracefully

## Getting Started

### Prerequisites

- [Sui CLI](https://docs.sui.io/build/install)
- Move language toolchain

### Installation

Clone the repository:
```sh
git clone https://github.com/Vin-Jex/sui-calculator.git
cd sui-calculator
```

### Building

Compile the Move modules:
```sh
sui move build
```

### Usage

Publish the package to your local Sui network or testnet:
```sh
sui client publish --gas-budget 10000
```

Call the calculator function (example):
```sh
sui client call \
  --package <PACKAGE_ID> \
  --module result \
  --function calculator_something \
  --args 10 5 "+" \
  --gas-budget 10000
```
Replace `<PACKAGE_ID>` with your published package ID.

## Project Structure

- `sources/calculator.move`: Core arithmetic functions
- `sources/result.move`: Result object and main calculator entrypoint