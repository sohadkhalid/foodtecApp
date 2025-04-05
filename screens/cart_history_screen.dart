import 'package:flutter/material.dart';

class CartHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BackGround
          Positioned.fill(
            child: Container(color: Colors.white),
          ),

          // Top Bar
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Image.asset("assets/Top Bar.png", fit: BoxFit.cover),
          ),

          // Cart & History
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child:
                Image.asset("assets/Frame 1984077818 h.png", fit: BoxFit.cover),
          ),

          // List Menu
          Positioned(
            top: 160,
            left: 20,
            right: 20,
            child: Image.asset("assets/Component 5.png", fit: BoxFit.cover),
          ),

          // نص "Load More" بالأخضر
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Load More..",
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
