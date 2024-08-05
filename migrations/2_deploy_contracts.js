const ReFiTalentsDAO = artifacts.require("ReFiTalentsDAO");

module.exports = function(deployer) {
  const name = process.env.TOKEN_NAME;
  const symbol = process.env.TOKEN_SYMBOL;

  deployer.deploy(ReFiTalentsDAO, name, symbol);
};
