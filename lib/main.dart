
import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold,);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Messeges',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Notifications',
      style: optionStyle,
    ),

    Text(
      'Menu',
      style: optionStyle,

    ),
  ];

  void _onItemTapped(int index) {
    if(index==3){
      Scaffold.of(context).openEndDrawer();
    }
    else setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Tury'),
        backgroundColor: Colors.black54,
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messeges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.menu_rounded),
            label: "menu",

          ),


        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,

      ),

    );
  }
}

