const kenesis_v1 = artifacts.require("kenesis_v1");

module.exports = function (deployer) {
  deployer.deploy(kenesis_v1);
};
