import 'package:flutter/material.dart';

class SetLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/set_location.png',
              fit: BoxFit.cover,
            ),
          ),

          ///Path
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.25,
            child: Image.asset(
              'assets/route.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          // car position

          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(
              'assets/car.png',
              width: 50,
              height: 50,
            ),
          ),

          /// home
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/home.png',
              width: 60,
              height: 60,
            ),
          ),

          ///find you location
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Row(
              children: [
                Icon(Icons.arrow_back, size: 24, color: Colors.black),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find your location",
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// white box
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: Column(
              children: [
                /// "Your Location"
                Image.asset('assets/Text.png', width: 120, height: 25),
                SizedBox(height: 10),

                // box
                Image.asset('assets/box.png', width: 320, height: 160),

                /// box detsiles
                Positioned(
                  top: 15,
                  left: 20,
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.green),
                      SizedBox(width: 10),
                      Text(
                        "123 Al-Modine Street, Abdali, Amman, Jordan",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Nav  bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Bottom_Nav.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
