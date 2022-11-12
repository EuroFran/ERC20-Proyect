pragma solidity ^0.8.0;

import "./MyERC20.sol";

contract Exchange {
    MyERC20 public gold;
    MyERC20 public experience;

    constructor(address _gold, address _experience) {
        gold = MyERC20(_gold);
        experience = MyERC20(_experience);
    }

    // Exchange some gold for experience
    
    function exchange(uint256 goldAmount) public {
        require(gold.balanceOf(msg.sender) >= goldAmount, "Exchange: not enough gold");

        gold.burn(msg.sender, goldAmount);
        experience.mint(msg.sender, goldAmount / 10);
    }
}

