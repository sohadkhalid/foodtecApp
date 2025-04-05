import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green.shade700,
          ),
          //  "Foodtek"
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/splash_logo.png',
                width: 150,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    // e-mail field
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    // password field
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text("Remember me"),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/forgot_password");
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    // زر تسجيل الدخول
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(vertical: 12),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    //  "or"
                    Row(
                      children: [
                        Expanded(child: Divider(thickness: 1)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or"),
                        ),
                        Expanded(child: Divider(thickness: 1)),
                      ],
                    ),
                    SizedBox(height: 15),
                    //  signin bottons with another accounts
                    _socialLoginButton("Continue with Google",
                        FontAwesomeIcons.google, Colors.red),
                    SizedBox(height: 10),
                    _socialLoginButton("Continue with Facebook",
                        FontAwesomeIcons.facebook, Colors.blue),
                    SizedBox(height: 10),
                    _socialLoginButton("Continue with Apple",
                        FontAwesomeIcons.apple, Colors.black),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialLoginButton(String text, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, color: color, size: 20),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// widget for sigin buttons
class SocialLoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onPressed;

  SocialLoginButton(
      {required this.icon,
      required this.text,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white),
        label: Text(text, style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
