pragma solidity ^0.8.0;

import "openzeppelin/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20 {
    constructor(
        string memory _name,
        string memory _symbol)
    ERC20(_name, _symbol) {

    }

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }

    function burn(address _from, uint256 _amount) public {
        _burn(_from, _amount);
    }
}
