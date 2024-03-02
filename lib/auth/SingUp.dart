import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingUp extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FullName = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/logo.png'),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  'Welcome to DMI',
                  style: TextStyle(
                      fontSize: 32,
                      color: Color.fromRGBO(22, 22, 151, 1),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text('LET ACCESS ALL WORK FROM HERE'),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 65, left: 40, right: 40),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              controller: FullName,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter Full Name';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 1, left: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: 'Full Name',
                                  fillColor:
                                      Color.fromRGBO(217, 217, 217, 0.5)),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 40, right: 40),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter Email Address';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 1, left: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: 'Email Address',
                                  fillColor:
                                      Color.fromRGBO(217, 217, 217, 0.5)),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 40, right: 40),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter Password';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 1, left: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: 'Create Password',
                                  fillColor:
                                      Color.fromRGBO(217, 217, 217, 0.5)),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 40, right: 40),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Re enter Password';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 1, left: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: 'Re enter Password',
                                  fillColor:
                                      Color.fromRGBO(217, 217, 217, 0.5)),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _auth.createUserWithEmailAndPassword(
                            email: emailController.text.toString(),
                            password: passwordController.text.toString());
                      }
                    },
                    child: Text(
                      'Sing up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(
                            22,
                            22,
                            151,
                            1,
                          ),
                          fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Color.fromRGBO(22, 22, 151, 1)))),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Image.asset('assets/singupimage.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
