import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: MainScreen(),
//     debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MainScreen extends StatefulWidget {

  //Declare Route Name
  static const String routeName = "Counter";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return HomePage();
  }
}

class HomePage extends State<MainScreen> {
  int increment = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StateFul Widgets")),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter = $increment"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    increment++;
                    print(increment);
                  });
                },
                child: Text("Press Increment Counter"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Profile Card"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
