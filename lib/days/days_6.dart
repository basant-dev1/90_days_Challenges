class BankAccount{
  String accountHolderName = "";
  int accountNumber= 0;
  double balance= 0.0;

  BankAccount(this.accountHolderName,this.accountNumber,this.balance);

  //deposit
void deposit(double amount){
  if(amount>0){
    balance = balance + amount;
    print("Deposit Amount is $amount");
  }else{
    print("Invalid Deposit Amount $amount");
  }
}
//withdrawn
void withdrawn(double amount){
  if(amount>0 && amount<=balance){
    balance = balance-amount;
    print("Withdrawn Amount $amount");
  }else{
    print("You Entered $amount Insufficient Balance Your Current Balance :- $balance");
  }
}

//display

void display(){
  print("Account Holder Name $accountHolderName");
  print("Account Number $accountNumber");
  print("Currrent Balance $balance");
}
}


void main(){
  BankAccount b1 = BankAccount("Basant", 123456789, 100);

  b1.display();
  b1.deposit(50);
  b1.display();
  b1.withdrawn(20);
  b1.display();
  b1.withdrawn(200);
  // b1.display();
}