Add files via upload
# Lottery Smart Contract

This project is a simple lottery smart contract written in Solidity. It allows participants to enter the lottery by sending 1 ether and randomly selects a winner from the participants when the manager triggers the draw. The winner receives the entire contract balance.

## Table of Contents

- [Getting Started](#getting-started)
- [Usage](#usage)
- [Smart Contract Details](#smart-contract-details)
- [Contributing](#contributing)

## Getting Started

To get started with this project, you'll need to deploy the smart contract on the Ethereum blockchain. You can use development tools like [Truffle](https://www.trufflesuite.com/) or [Remix](https://remix.ethereum.org/) to deploy the contract.

## Usage

1. Deploy the smart contract to an Ethereum testnet or mainnet.
2. As the manager, you can initiate the lottery draw.
3. Participants can enter the lottery by sending exactly 1 ether to the contract address.
4. After enough participants have entered, the manager can trigger the draw.
5. A random winner will be selected, and the entire contract balance will be transferred to their address.

## Smart Contract Details

The smart contract has the following key functions and variables:

- `manager`: The address of the manager who deploys the contract.
- `participants`: An array of participant addresses.
- `receive()`: Function to allow participants to enter the lottery by sending 1 ether.
- `getBalance()`: Function to check the contract's balance.
- `random()`: Function to generate a pseudo-random number for winner selection.
- `pickWinner()`: Function to select a winner and transfer the balance.

## Contributing

If you'd like to contribute to this project, please fork the repository and create a pull request. We welcome contributions and improvements.

