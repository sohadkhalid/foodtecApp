import 'package:flutter/material.dart';
import 'package:food_app_/screens/congratulations_screen.dart';

class ConfirmNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  "Foodtec",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/splash_logo.png',
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.black),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),

                      Text(
                        "Reset Password",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      //  "Reset Password"
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Want to try my current password? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // New password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "New Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // confirm new paassword
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm New Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // "Update Password"
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CongratulationsScreen()),
                    );
                  },
                  child: Text(
                    "Update Password",
                    style: TextStyle(color: Colors.white),
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
