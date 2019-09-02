pragma solidity ^0.5.0;

import "node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";

contract txDai is ERC20Mintable {

  string public constant name = "txDai";
  string public constant symbol = "txDai";
  uint8 public constant decimals = 2;

  uint256 public constant INITIAL_SUPPLY = 100000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }

}
