import 'package:flutter/material.dart';

class HomePizzaScreen extends StatelessWidget {
  const HomePizzaScreen({super.key});

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
                    // Location Service
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/Top Bar.png",
                        width: 400,
                        height: 100,
                      ),
                    ),

                    const SizedBox(height: 11), //  Input

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
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // 🔹 Navigation Tabs
              GestureDetector(
                onTapUp: (details) {},
                child:
                    Image.asset("assets/Frame 42.png", width: double.infinity),
              ),

              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {},
                child:
                    Image.asset("assets/Group 28.png", width: double.infinity),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),

      // 🔹 Bottom Navigation Bar
      bottomNavigationBar: GestureDetector(
        onTapUp: (details) {
          //  Bottom Navigation
        },
        child: Image.asset("assets/Bottom Nav.png", width: double.infinity),
      ),
    );
  }
}
