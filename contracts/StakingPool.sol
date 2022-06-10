// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;
import "./ReservePool.sol";
import "./Tokenpay.sol";

contract StakingPool{
 
    Tokenpay public tokenpay;

    constructor(address payable _tokenpay){
        tokenpay = Tokenpay(_tokenpay);
    }

    function balanceOf(address _address) external view returns(uint){
        uint balance = tokenpay.balanceOf(_address);
        return balance;
    }
}
