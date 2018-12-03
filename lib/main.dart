import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
        backgroundColor: Color(0xFF606060),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(Strings.bodyText),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onNavTap, // new
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF606060)),
            title: Text("Home", style: TextStyle(color: Color(0xFF606060))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color(0xFF606060)),
            title: Text("Search", style: TextStyle(color: Color(0xFF606060))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on, color: Color(0xFF606060)),
            title: Text("Activity", style: TextStyle(color: Color(0xFF606060))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Color(0xFF606060)),
            title: Text("Menu", style: TextStyle(color: Color(0xFF606060))),
          ),
        ],
      ),
    );
  }
}

void onNavTap(int index) {}
