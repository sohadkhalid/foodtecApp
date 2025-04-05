import 'package:flutter/material.dart';
import 'package:food_app_/screens/congratulations_screen.dart';
import 'package:food_app_/screens/verify_code_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/iphone16.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/splash_logo.png',
                width: 150,
              ),
            ),
          ),
          // screen content
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Back to ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: "Login ",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "page?",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  //  Reset Password in the middle
                  Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 12),

                  Text(
                    "Enter your E-mail or phone and we'll\n"
                    " send you a link to get back into\n"
                    " your account",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20),

                  // E-mail field
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  //  Send botton
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // لضبط المسافة الجانبية
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyCodeScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: Text(
                          "Send",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
