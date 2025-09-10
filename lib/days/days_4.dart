import 'dart:io';

void main(){
//loops

// //Table using for Loop
// stdout.write('Enter Table no :- ');
// int no = int.parse(stdin.readLineSync()!);
// print('Tables of $no is \n');
//
// for(int n = 1; n <= 10; n++) {
//   var number = no * n;
//
//   print('$no * $n = $number');
//
// }

// Prime no Checker

// stdout.write('Enter No to Check its prime or not :- ');
// int pno =int.parse(stdin.readLineSync()!);
//
// if(pno <= 1){
//   print('$pno is not prime ');
//   return;
// }
//
// bool isprime = true;
// for(int i = 2; i <= pno ~/ 2; i++){
//   if(pno % i == 0){
//     isprime =false;
//   }
// }
//
// if(isprime){
//   print('$pno is prime no.');
// }else{
//   print('$pno is not prime no');
// }


//Factorial

// stdout.write('Find Factorial of :- ');
// int no = int.parse(stdin.readLineSync()!);
// if(no<=0){
//   print('factorial is not define');
//   return;
// }
//
// int fact = 1;
// for(int i = 1; i<= no; i++){
//   fact = fact * i;
// }
//
// print('Factorial of $no is $fact');

stdout.write('Enter no to be Reversed :- ');
int no = int.parse(stdin.readLineSync()!);

int rev = 0;
// int tem = no;

while(no>0){
 int digit = no %10;
  rev = rev * 10 + digit;
  // print(rev);
  no ~/= 10;

}
print('Reverse digit is $rev');
}