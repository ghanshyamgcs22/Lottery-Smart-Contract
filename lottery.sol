// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;
contract lottery{

    address public manager;
    // more  participants honge so aaray
    address payable[] public  participants;

    constructor ()
    { 
        // jab deploy hoga toh jise karenge unka addres yaha store ho jayega
        manager=msg.sender;//global variable
    }


    receive() external payable //ek baar hi use kr skte h pure contract me
    {    require(msg.value==1 ether, "You must send exactly 1 ether to participate.");
       participants.push(payable (msg.sender));
     }

     function getbalance()public view returns (uint)
     {  require(msg.sender==manager, "Only the manager can check the balance.");
        return address(this).balance;
     }

     function random()private  view  returns(uint)
     {
        // dont use in smart contracts
        return  uint( keccak256(abi.encodePacked(block.prevrandao,block.timestamp,participants.length)));
     }

     function winnerParticipate()public 
     {
        require(msg.sender==manager, "Not enough participants to pick a winner.");
        require(participants.length>=3);
    

  address payable  winner;
  
    // length se kam hi aayegi
  
        uint index=(random())%participants.length;
        winner=participants[index];

        winner.transfer(getbalance());
// reseting dynamic array or become zero and after than only managrer can reset 
        participants=new address payable [](0);
     }
}

