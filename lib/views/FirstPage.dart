import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/auth/LoginPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 22),
                child: Image.asset('assets/logo.png')),
            Text(
              'Welcome to DMI',
              style: TextStyle(
                color: Color.fromRGBO(22, 22, 151, 1),
                fontWeight: FontWeight.bold,
                fontSize: 32,
                shadows: <Shadow>[
                  // Shadow(
                  //   offset: Offset(10.0, 10.0),
                  //   blurRadius: 3.0,
                  //   color: Color.fromARGB(255, 0, 0, 0),
                  // ),
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Color.fromRGBO(22, 22, 151, 1), // shadow color
                    offset: Offset(2.0, 2.0), // how much shadow will be shown
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              'LET ACCESS ALL WORK FROM HERE',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              width: 115,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color.fromRGBO(22, 22, 151, 1))),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Color.fromRGBO(22, 22, 151, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color.fromRGBO(22, 22, 151, 1)))),
              onPressed: () {},
              child: Text(
                'Sign up',
                style: TextStyle(
                    color: Color.fromRGBO(22, 22, 151, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Image.asset(
                'assets/login_image.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
