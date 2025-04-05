import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text("Password Reset Successfully!",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text("Back to Login", style: GoogleFonts.poppins()),
            ),
          ],
        ),
      ),
    );
  }
}
