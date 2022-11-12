pragma solidity ^0.8.0;

import "./MyERC20.sol";

contract Acquisition {
    MyERC20 public gold;
    MyERC20 public experience;

    constructor(address _gold, address _experience) {
        gold = MyERC20(_gold);
        experience = MyERC20(_experience);
    }

    // Acquire some gold and experience
     
    function acquire() public {
        gold.mint(msg.sender, 100);
        experience.mint(msg.sender, 10);
    }
}
