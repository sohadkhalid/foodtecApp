import 'package:flutter/material.dart';
import 'package:food_app_/screens/confirm_new_password_screen.dart';
import 'package:food_app_/screens/login_screen.dart';
import 'package:food_app_/screens/reset_password_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/splash_logo.png',
                width: 150, // حجم الصورة
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // arrow for back
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  /// bage bar
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 5),

                  /// signin link
                  Row(
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text("Login",
                            style: TextStyle(color: Colors.greenAccent)),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  ///  Full Name Field
                  TextField(
                    controller: fullNameController,
                    decoration: InputDecoration(labelText: "Full Name"),
                  ),

                  ///  Email Field
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  /// bithdate and calander Field
                  TextField(
                    controller: birthDateController,
                    decoration: InputDecoration(
                      labelText: "Birth of date",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100),
                          );
                          if (pickedDate != null) {
                            setState(() {
                              birthDateController.text =
                                  "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                            });
                          }
                        },
                      ),
                    ),
                    readOnly: true,
                  ),

                  /// Phone num Field
                  TextField(
                    controller: numberController,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),

                  /// Password and visibility
                  TextField(
                    controller: passwordController,
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: "Set Password",
                      suffixIcon: IconButton(
                        icon: Icon(isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  /// Signin button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPasswordScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text("Register",
                          style: TextStyle(color: Colors.white)),
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
