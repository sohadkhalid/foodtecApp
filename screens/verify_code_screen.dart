import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_/screens/confirm_new_password_screen.dart';

class VerifyCodeScreen extends StatelessWidget {
  final List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 20,
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
            child: Stack(
              children: [
                Image.asset(
                  "assets/verify.png",
                  width: 320,
                  height: 420,
                  fit: BoxFit.cover,
                ),

                //  Enter the code
                Positioned(
                  top: 190,
                  left: 50,
                  right: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return SizedBox(
                        width: 45,
                        child: TextField(
                          controller: controllers[index],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          maxLength: 1,
                        ),
                      );
                    }),
                  ),
                ),

                //  Verify  botton
                Positioned(
                  bottom: 30,
                  left: 100,
                  right: 100,
                  child: GestureDetector(
                    onTap: () {
                      //  Confirm New Password
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmNewPasswordScreen()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
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
