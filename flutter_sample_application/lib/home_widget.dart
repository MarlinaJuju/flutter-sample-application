import 'package:flutter/material.dart';
import 'dashboard_widget.dart';
import 'messages_widget.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentIndex=0;
  final List<Widget> _children=[
    DashboardWidget(Colors.white),
    MessageWidget(),
    DashboardWidget(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text("Messages")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile")
          ),
        ],
      ),
    );
  }

  void onTapped(int index){
    setState(() {
      _currentIndex=index;
    });
  }
}