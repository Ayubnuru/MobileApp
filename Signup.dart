// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_app/Parent.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(fontFamily: 'poppins', ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                  )),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your full name",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'poppins'),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12.0),
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
              const Text('Phone Number',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                  )),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'poppins'),
                ),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                maxLength: 10,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                ),
              ),
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
              const Text('Role',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                  )),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Student/Parent",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'poppins'),
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your role';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12.0),
              const Text('Address',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                  )),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your address",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'poppins'),
                ),
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12.0),
              const Text('Add a Profile Picture from Gallery',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                  )),
              ElevatedButton(
                onPressed: () {
                  _pickimagefromgallery();
                  // Add functionality to pick a profile picture from the gallery
                },
                style: ElevatedButton.styleFrom(
                  textStyle:
                      const TextStyle(fontSize: 16.0, fontFamily: 'poppins'),
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.white,
                ),
                child: const Text('Pick Image'),
              ),
              const SizedBox(height: 12.0),
              const Text('Add a Profile Picture from Camera',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                  )),
              ElevatedButton(
                onPressed: () {
                  _pickimagefromcamera();
                  // Add functionality to pick a profile picture from camera
                },
                style: ElevatedButton.styleFrom(
                  textStyle:
                      const TextStyle(fontSize: 16.0, fontFamily: 'poppins'),
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.white,
                ),
                child: const Text('Take a Picture'),
              ),
              const SizedBox(height: 25.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process form submission
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Submitting Form....')),
                      );

                      _parentPage(context: context, fullScreenDialog: true);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 12.0),
                      backgroundColor: Colors.blue[400],
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15.0,
                      )),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickimagefromgallery() async {
    final _pickedfile = await _picker.pickImage(source: ImageSource.gallery);
    if (_pickedfile != null) {
      setState(() {});
    }
  }

  Future<void> _pickimagefromcamera() async {
    final _pickedfile = await _picker.pickImage(source: ImageSource.camera);
    if (_pickedfile != null) {
      setState(() {});
    }
  }

  void _parentPage(
      {required BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Parent()));
  }
}
