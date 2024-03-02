import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/auth/LoginPage.dart';
import 'package:notes_app/views/FirstPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2500,
      splash: Column(
        children: [
          Center(
            child: Lottie.asset(
              'choose-your-colors.json',
              height: 300,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Powered by FG College',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.grey)),
          )
        ],
      ),
      splashIconSize: 400,
      nextScreen: const FirstPage(),
      backgroundColor: Colors.white,
    );
  }
}
