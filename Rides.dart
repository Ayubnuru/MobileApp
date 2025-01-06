import 'package:flutter/material.dart';

class Rides extends StatelessWidget {
  const Rides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rides',
        style: TextStyle(
          fontFamily: 'poppins',
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
      ),
    );
  }
}
