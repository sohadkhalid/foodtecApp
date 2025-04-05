import 'package:flutter/material.dart';

class CartMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Container(color: Colors.white),
          ),

          // Top Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/Top Bar.png", fit: BoxFit.cover),
          ),

          // Cart & History as Imag
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child:
                Image.asset("assets/Frame 1984077817.png", fit: BoxFit.cover),
          ),

          // List Menu
          Positioned(
            top: 90,
            left: 20,
            right: 20,
            child:
                Image.asset("assets/Frame 1984077818.png", fit: BoxFit.cover),
          ),

          //  Card
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Image.asset("assets/Price Info.png", fit: BoxFit.cover),
          ),

          // Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/Bottom Nav.png", fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
