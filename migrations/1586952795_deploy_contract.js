require('dotenv').config();
const StandardToken = artifacts.require("StandardToken");

module.exports = function (deployer) {
  const name = process.env.NAME;
  const symbol = process.env.SYMBOL;
  const decimals = process.env.DECIMALS;
  const supply = process.env.SUPPLY;
  deployer.deploy(StandardToken, name, symbol, decimals, supply);
};
