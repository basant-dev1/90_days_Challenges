import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile Screen App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Card"), centerTitle: true),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Column(
            children: [
              Icon(Icons.image, size: 80),
              Text(
                "Basant Sharma",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(height: 90),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail, color: Colors.blue, size: 25),
                  Text(
                    "abc@gmail.com",
                    style: TextStyle(fontSize: 25, color: Colors.cyan),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.call, color: Colors.blue, size: 17),
                  ),
                  Text(
                    "Contact Us...",
                    style: TextStyle(fontSize: 17, color: Colors.brown),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
