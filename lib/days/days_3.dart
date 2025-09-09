import 'dart:io';

void main() {
  // print('Grade Checker');
  // double grade=double.parse(stdin.readLineSync()!);
  // print('Student Marks is $grade');
  //
  // if(grade>=90){
  //   print('A');
  // }else if(grade>=60){
  //   print('B');
  // }else{
  //   print('not eligible');
  // }
  print('calculator');

  stdout.write('choose option (1/2) \n');
  String option = stdin.readLineSync()!;

  if(option != '1' && option != '2'){
    print('Choose Given option');
    return;
  }


  print('Enter no 1');
  double? v1 = double.parse(stdin.readLineSync()!);
  print('Enter no 2');
  double? v2 = double.parse(stdin.readLineSync()!);

  double? result;

  switch (option) {
    case '1':
      result = v1 + v2;
      print('Add is $result');
      break;
    case '2':
      result = v1 - v2;
      print('Sub is $result');
      break;
      default:
        print('Please Chose only given option');
  }
}
