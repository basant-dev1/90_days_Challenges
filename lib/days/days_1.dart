//starting point of the dart
void main(){

  //printing values
  print('Days one Practices');

  /*      A) Types of Variables
  1) var
  2) const
  3) final
  4) dynamic
  5) late
   */

  //var
  var name = 'Basant'; //  type can't be later
  //ex
  // name = 25; // Run Time Error

  // dynamic
  dynamic sem = '7th';  //type can change any time
  //ex
  sem = 7;  //print 7

  //final
  final roll = 377;   //values can't reassign later also can't change & it run time constant
  //ex
  // roll = 652; //error

  //const
  const pi = 3.141;  //it compile time constant

  //late
  late String location;    //we can assign the value later
  //ex
  location = 'Chandigarh';


  /*  B) Data Types
  1) int
  2) double
  3) String
  4) list
  5) map
  6) set
  7) boolean (bool)
  8) null Type

   */

  int room_no = 01;
  double marks = 89.5;
  String College_name = 'IGCE';
  bool isTrue = false; //true and false value only
  List<int> no= [1,2,3,4,2]; // its can be hold duplicate value
  List<String> alphabet = ['a','b','c','etc'];

  Set<int> count = {1,2,3,4};  //it can't hold duplicate value

Map<String , String> details = {
    "abc" : "Basant",
    "title" : "377",
  };


  int? salary;
salary = 5000000;
  print("$details");
}