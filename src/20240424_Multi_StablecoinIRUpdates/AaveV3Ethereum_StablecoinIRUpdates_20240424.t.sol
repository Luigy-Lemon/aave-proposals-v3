// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Ethereum} from 'aave-address-book/AaveV3Ethereum.sol';

import 'forge-std/Test.sol';
import {ProtocolV3TestBase, ReserveConfig} from 'aave-helpers/ProtocolV3TestBase.sol';
import {AaveV3Ethereum_StablecoinIRUpdates_20240424} from './AaveV3Ethereum_StablecoinIRUpdates_20240424.sol';

/**
 * @dev Test for AaveV3Ethereum_StablecoinIRUpdates_20240424
 * command: make test-contract filter=AaveV3Ethereum_StablecoinIRUpdates_20240424
 */
contract AaveV3Ethereum_StablecoinIRUpdates_20240424_Test is ProtocolV3TestBase {
  AaveV3Ethereum_StablecoinIRUpdates_20240424 internal proposal;

  function setUp() public {
    vm.createSelectFork(vm.rpcUrl('mainnet'), 19726460);
    proposal = new AaveV3Ethereum_StablecoinIRUpdates_20240424();
  }

  /**
   * @dev executes the generic test suite including e2e and config snapshots
   */
  function test_defaultProposalExecution() public {
    defaultTest(
      'AaveV3Ethereum_StablecoinIRUpdates_20240424',
      AaveV3Ethereum.POOL,
      address(proposal)
    );
  }
}
