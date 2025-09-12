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


// class Person {
//   String name;
//   int age;
//
//   Person(this.name,this.age);
// }
//
// class Teacher extends Person{
//   String subject;
//   Teacher(String name, int age , this.subject) : super(name,age);
//   void tech(){
//     print("Teacher Name :- $name , Age :- $age and Subject :- $subject");
//   }
// }
//
// class Student extends Teacher{
//   double grade = 0.0;
// Student(String name , int age ,String subject, this.grade) : super(name,age,subject);
// String study(){
//     return "Student Name :- $name , age :- $age and Grade :- $grade";
//   }
// }
//
// void main(){
// Teacher t1 = Teacher("rahul", 35, "math");
// t1.tech();
// Student s1 = Student("raj", 21, "eng", 210.0);
// print(s1.study());
// }

class Student{
  String name = "";
  int roll = 0;
  double grade = 0;
  Student(this.name,this.roll,this.grade);
  void display(){
    print("Student Name :- $name , Roll number :- $roll and Grade :- $grade");
  }
}

class studentManagement{

  List<Student> students = [];

  void addStudent(Student student){
    students.add(student);
    print("Student Added Successfully");
  }

  void displayAll(){
    if(students.isEmpty){
      print("Student List is empty");
    }else{
      print("------Students List------");
      for(var student in students){
        student.display();
      }
    }
  }

  void searchStudent(int roll){
    bool found = false;
    for (var student in students){
      if(student.roll == roll){
        print("Students Found ");
        student.display();
        found =true;
        break;
      }
    }
    if(!found){
      print("Student with roll no $roll not found");
    }
}

}

void main(){
  var sms = studentManagement();
  sms.addStudent(Student("basant", 210, 210.0));
  sms.addStudent(Student("rahul", 111, 140.0));
  sms.displayAll();
  sms.searchStudent(111);
}