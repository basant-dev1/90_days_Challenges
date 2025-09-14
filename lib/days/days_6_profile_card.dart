import 'package:flutter/material.dart';
import 'package:ninty_days_challenges/days/stateful_Widget.dart';
import 'package:ninty_days_challenges/main.dart';

void main() {
  runApp(const ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile Screen App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Screen(),
      routes: {
        //defining all routes in main file eg. (main function)
        MainScreen.routeName: (context) => MainScreen(),
        MyApp.routeName: (context) => MyApp(),
      },
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Card"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomLeft,
              color: Colors.grey,
              child: Container(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB0cnG0pj0gEiswWJNNklqa7yFI8sMtgwe_A&s",
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text("Basant Kumar",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, MainScreen.routeName);
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, MainScreen.routeName);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.perm_identity),
              onTap: () {
                Navigator.pushNamed(context, MainScreen.routeName);
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
            )
          ],
        ),
      ),
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
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.mail, color: Colors.blue, size: 25),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 25, color: Colors.cyan),
                  ),
                ],
              ),
              const SizedBox(height: 55),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // child: Icon(Icons.call, color: Colors.blue, size: 17),
                  ),
                  Text(
                    "Contact Us...",
                    style: TextStyle(fontSize: 17, color: Colors.brown),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    },
                    icon: Icon(Icons.mail),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyApp.routeName);
                    },
                    icon: Icon(Icons.phone),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MainScreen.routeName);
                    },
                    icon: Icon(Icons.link),
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
