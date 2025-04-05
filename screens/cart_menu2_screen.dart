import 'package:flutter/material.dart';

class CartMenu2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BackGround
          Positioned.fill(
            child: Container(color: Colors.white),
          ),

          // Top Bar as Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/Top Bar.png", fit: BoxFit.cover),
          ),

          //cart & history
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child:
                Image.asset("assets/Frame 1984077817.png", fit: BoxFit.cover),
          ),

          //Spicy Shawarma image
          Positioned(
            top: 110,
            left: 20,
            right: 20,
            child: Image.asset("assets/Menu 3.png", fit: BoxFit.cover),
          ),

          // List Menu
          Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Image.asset("assets/Component 5.png", fit: BoxFit.cover),
          ),

          //  Card
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Image.asset("assets/Price Info.png", width: 50),
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
