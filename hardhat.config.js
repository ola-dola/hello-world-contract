/**
* @type import('hardhat/config').HardhatUserConfig
*/

require('dotenv').config();
require("@nomiclabs/hardhat-ethers");

const { API_URL, PRIVATE_KEY, RINKEBY_API_URL } = process.env;

module.exports = {
   solidity: "0.8.0",
   defaultNetwork: "rinkeby",
   networks: {
      hardhat: {},
      ropsten: {
         url: API_URL,
         accounts: [`0x${PRIVATE_KEY}`]
      },
      rinkeby: {
         url: RINKEBY_API_URL,
         accounts: [`0x${PRIVATE_KEY}`]
      }
   },
}