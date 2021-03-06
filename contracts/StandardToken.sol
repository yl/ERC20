pragma solidity >= 0.5.0 < 0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract StandardToken is ERC20, ERC20Detailed {
    constructor(string memory _name, string memory _symbol, uint8 _decimals, uint256 _supply)
        public
        ERC20Detailed(_name, _symbol, _decimals)
    {
        _mint(msg.sender, _supply);
    }
}
