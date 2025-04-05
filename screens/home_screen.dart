import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    // 🔹 Location Service
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/Top Bar.png",
                        width: 400,
                        height: 100,
                      ),
                    ),

                    const SizedBox(height: 16), //  Input

                    // Input Text مع TextField
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        //  Input Text
                        Image.asset("assets/Input Text.png",
                            width: double.infinity),

                        //  (TextField)
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 21),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(
                              hintText: "Search menu,restaurant or etc",
                              border: InputBorder.none, // remove borders
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //  Navigation Tabs
              GestureDetector(
                onTapUp: (details) {},
                child:
                    Image.asset("assets/Frame 41.png", width: double.infinity),
              ),

              const SizedBox(height: 10),

              //  Promo Banner (30%)
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/Group 3107.png",
                    width: double.infinity),
              ),

              const SizedBox(height: 10),

              // 🔹 Top Rated
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/Frame 427321863.png",
                    width: double.infinity),
              ),

              const SizedBox(height: 10),

              // 🔹 Recommended
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/Component 1.png",
                    width: double.infinity),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      // 🔹 Bottom Navigation Bar
      bottomNavigationBar: GestureDetector(
        onTapUp: (details) {
          // Bottom Navigation
        },
        child: Image.asset("assets/Bottom Nav.png", width: double.infinity),
      ),
    );
  }
}
