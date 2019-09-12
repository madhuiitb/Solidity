    pragma solidity^0.5.0;
     
    contract Bank {
     struct Account {
     address addr;
     uint amount;
     }
     
     Account public acc = Account({
        addr: 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a,
        amount: 50
     });
     
     Account public acc2 = Account({
        addr: 0x145730202342B48aDFA6Cc468B90F31494175B0c,
        amount: 500
     });
     function addAmount(uint _addMoney) public {
     acc.amount += _addMoney;
     }
     
     function withdrawAmoun(uint _withdrawMoney) public{
         acc.amount -= _withdrawMoney;
     }
     
     function transfer(uint256 value) public {
         require(acc.amount >= value);
         require(acc2.amount + value >= acc2.amount);
         acc.amount -= value;
         acc2.amount += value; 
  }
     
    }
