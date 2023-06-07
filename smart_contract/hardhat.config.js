//https://eth-sepolia.g.alchemy.com/v2/QH6qUuUyRNyFiABsOya3GwqrEBhZud0o

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    sepolia: {
     url: 'https://eth-sepolia.g.alchemy.com/v2/QH6qUuUyRNyFiABsOya3GwqrEBhZud0o',
     accounts: ['655d849dcb6a62cc0fccb2247dc873be9b90b33a3df759f3859f95623f2b0d32']
    },
  },
};