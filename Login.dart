import 'package:flutter/material.dart';
import 'package:project_app/Parent.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
              )),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('E-mail',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 20,
                        )),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your email address",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontFamily: 'poppins'),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12.0),
                    const Text('Password',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 20,
                        )),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontFamily: 'poppins'),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      maxLength: 8,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process form submission
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Submitting Form')),
                            );
                            _parentPage(
                                context: context, fullScreenDialog: true);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32.0, vertical: 12.0),
                            backgroundColor: Colors.blue[400],
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontFamily: 'poppins', fontSize: 15.0)),
                        child: const Text('Submit'),
                      ),
                    ),
                  ]),
            )));
  }

  void _parentPage(
      {required BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Parent()));
  }
}
