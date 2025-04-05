import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:food_app_/screens/reset_password_screen.dart';

class CongratulationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //  Reset Password screen Background
          Positioned.fill(
            child: ResetPasswordScreen(),
          ),

          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),

          //  Foodtec
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/splash_logo.png',
                width: 150,
              ),
            ),
          ),
          //  Congratulations
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  "assets/congrat.png",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  "Congratulations!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Password reset successfully",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
