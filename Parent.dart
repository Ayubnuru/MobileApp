import 'package:flutter/material.dart';
import 'Events.dart';
import 'Profile.dart';
import 'Rides.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  List _pages = [];
  int _currentIndex = 0;
  Widget _currentPage = Container();
  @override
  void initState() {
    super.initState();
    _pages..add(const Profile());
    _pages.add(const Rides());
    _pages..add(const Events());
  }

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Parent Information',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(30), child: _pages[_currentIndex])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: changePage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue),
              label: 'Profile',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_transportation, color: Colors.blue),
              label: 'Rides',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm, color: Colors.blue),
              label: 'Events',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
