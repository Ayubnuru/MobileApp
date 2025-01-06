import 'package:flutter/material.dart';
import 'Signup.dart';
import 'Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NileKidz',
          style: TextStyle(
            fontFamily: 'poppins',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to NileKidz...",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'poppins',
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "The NileKidz mobile app provides safe and reliable transportation services specifically for elementary and high school students. It connects students with drivers, ensuring they reach their destinations safely and on time. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'poppins',
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => {
                      _loginpage(context: context, fullScreenDialog: true)
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontFamily: ('poppins'),
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Login'),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () =>
                        {_signuppage(context: context, fullScreenDialog: true)},
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontFamily: ('poppins'),
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Signup'),
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

void _signuppage(
    {required BuildContext context, bool fullScreenDialog = false}) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Signup()));
}
void _loginpage(
    {required BuildContext context, bool fullScreenDialog = false}) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Login()));
}
