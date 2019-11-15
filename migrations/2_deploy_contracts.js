const Election = artifacts.require('Election');
const Election_2 = artifacts.require('Election_2');

module.exports = function(deployer) {
  deployer.deploy(Election_2);
};
