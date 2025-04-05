import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //  background
          Positioned.fill(
            child: Container(color: Colors.white),
          ),

          //  Notification Image
          Positioned(
            top: 20,
            right: 16,
            child: Image.asset(
              'assets/Notifii.png',
              width: 24,
              height: 24,
            ),
          ),

          // "Checkout"
          Positioned(
            top: 70,
            left: 16,
            child: Text(
              'Checkout',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          // ✅ "Pay With" and "Checkout"
          Positioned(
            top: 120,
            left: 0,
            child: Image.asset(
              'assets/Frame 1984077829.png',
              width: 300,
              height: 250,
            ),
          ),

          //  "Card Type"
          Positioned(
            top: 350,
            left: 8,
            child: Image.asset(
              'assets/Price Info.png',
              width: 350,
              height: 280,
            ),
          ),

          // Nav Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Bottom Nav.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
