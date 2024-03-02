import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                SizedBox(
                  height: height * 0.08,
                ),
                Image.asset('assets/google.png'),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 40, right: 40),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter Email Address';
                                } else {
                                  return null;
                                }
                              },
                              controller: emailController,
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
                              EdgeInsets.only(top: 10, left: 40, right: 40),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter Password';
                                } else {
                                  return null;
                                }
                              },
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 1, left: 10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: 'Password',
                                  fillColor:
                                      Color.fromRGBO(217, 217, 217, 0.5)),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Forget Password'),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Text(
                      'Login',
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
                Image.asset('assets/studyimage.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
