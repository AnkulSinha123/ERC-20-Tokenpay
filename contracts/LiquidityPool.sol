// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;
import "./ReservePool.sol";


contract LiquidityPool{
    address public owner;
    Tokenpay public tokenpay;

    receive() external payable{
        _requireReservePool();
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner!!");
        _;
    }    

    constructor(){
        owner = msg.sender;
        }

    ReservePool public reservepool;

    function setAddress(address payable _reservepool) external onlyOwner{
        reservepool = ReservePool(_reservepool);
    }

    function _requireReservePool() internal view{
        require(msg.sender == address(reservepool), "Only reservepool address");
    } 

    function getBalance() external view returns(uint bal){
      return bal = address(this).balance;
    }

}