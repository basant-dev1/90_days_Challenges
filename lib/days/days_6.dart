// class BankAccount{
//   String accountHolderName = "";
//   int accountNumber= 0;
//   double balance= 0.0;
//
//   BankAccount(this.accountHolderName,this.accountNumber,this.balance);
//
//   //deposit
// void deposit(double amount){
//   if(amount>0){
//     balance = balance + amount;
//     print("Deposit Amount is $amount");
//   }else{
//     print("Invalid Deposit Amount $amount");
//   }
// }
// //withdrawn
// void withdrawn(double amount){
//   if(amount>0 && amount<=balance){
//     balance = balance-amount;
//     print("Withdrawn Amount $amount");
//   }else{
//     print("You Entered $amount Insufficient Balance Your Current Balance :- $balance");
//   }
// }
//
// //display
//
// void display(){
//   print("Account Holder Name $accountHolderName");
//   print("Account Number $accountNumber");
//   print("Currrent Balance $balance");
// }
// }
//
//
// void main(){
//   BankAccount b1 = BankAccount("Basant", 123456789, 100);
//
//   b1.display();
//   b1.deposit(50);
//   b1.display();
//   b1.withdrawn(20);
//   b1.display();
//   b1.withdrawn(200);
//   // b1.display();
// }

// class Vehicle {
//   String brand = "Audi";
//   int year = 2021;
// }
//
// class Car extends Vehicle {
//   String color = "Blue";
//
//   void carDetails() {
//     print("Car Brand :- $brand ,Year :- $year and Color:- $color");
//   }
// }
//
// void main() {
//   var v1 = Car();
// v1.carDetails();
// }


class Person {
  String name;
  int age;

  Person(this.name,this.age);
}

class Teacher extends Person{
  String subject;
  Teacher(String name, int age , this.subject) : super(name,age);
  void tech(){
    print("Teacher Name :- $name , Age :- $age and Subject :- $subject");
  }
}

class Student extends Teacher{
  double grade = 0.0;
Student(String name , int age ,String subject, this.grade) : super(name,age,subject);
String study(){
    return "Student Name :- $name , age :- $age and Grade :- $grade";
  }
}

void main(){
Teacher t1 = Teacher("rahul", 35, "math");
t1.tech();
Student s1 = Student("raj", 21, "eng", 210.0);
print(s1.study());
}