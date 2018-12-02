import 'package:flutter/material.dart';
import 'strings.dart';
void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  createState() => new GHFlutterState();
}

class GHFlutterState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text(Strings.appTitle),
        backgroundColor: new Color(0xFF606060),
      ),
      body: new Padding(
      padding: new EdgeInsets.all(16.0),
      child: new Text(Strings.bodyText),
    ),
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: onTabTapped, // new
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home, color: new Color(0xFF606060)),
              title: Text("Home", style: TextStyle(color: new Color(0xFF606060))),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.search, color: new Color(0xFF606060)),
              title: Text("Search",
              style: TextStyle(color: new Color(0xFF606060)),
              ),
            ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket, color: new Color(0xFF606060)),
              title: Text("Basket",
              style: TextStyle(color: new Color(0xFF606060)),
              ),
            ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.flash_on, color: new Color(0xFF606060)),
              title: Text("Basket",
              style: TextStyle(color: new Color(0xFF606060)),
              ),
            ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: new Color(0xFF606060)),
              title: Text("Menu",
              style: TextStyle(color: new Color(0xFF606060)),
              ),
            ),
        ],
      ),
    );
  }
}

void onTabTapped(int index) {

 }