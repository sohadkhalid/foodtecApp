import 'package:flutter/material.dart';
import 'package:food_app_/screens/remove_msg_screen.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 8), // iPhone Status Bar

              //  Location Service + Input Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    //  Location Service
                    GestureDetector(
                      onTap: () {
                        // activate
                      },
                      child: Image.asset(
                        "assets/Top Bar.png",
                        width: 400,
                        height: 100,
                      ),
                    ),

                    const SizedBox(height: 8),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 300, top: 3),
                child: Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/Filter.png", width: double.infinity),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),

      // 🔹 Bottom Navigation Bar
      bottomNavigationBar: GestureDetector(
        onTapUp: (details) {},
        child: Image.asset("assets/Bottom Nav.png", width: double.infinity),
      ),
    );
  }
}
