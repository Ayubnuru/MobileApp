import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Profile',
      //   style: TextStyle(
      //     fontFamily:'poppins'
      //   ),),
      //   centerTitle: true,
      //   backgroundColor: Colors.blue[400],
      //   foregroundColor: Colors.white,

      // ),
      body: Column(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Icon(
            Icons.person,
            size: 50.0,
            color: Colors.lightBlue,
          ),
          Text('Name:',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15.0,
              )),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'E-mail:',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text('Student Name:',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15.0,
              )),
          SizedBox(height: 15.0),
          Text('Name of School:',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15.0,
              )),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
              ),
              onPressed: () => {},
              child: Text('Manage Settings',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 15.0,
                  )))
        ],
      ),
    );
  }
}
