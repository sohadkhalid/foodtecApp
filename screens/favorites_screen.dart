import 'package:flutter/material.dart';
import 'package:food_app_/screens/remove_msg_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

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

                    const SizedBox(height: 11),

                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        //  Input Text image
                        Image.asset("assets/Input Text.png",
                            width: double.infinity),

                        // (TextField) above the image
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
              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {},
                child:
                    Image.asset("assets/Group 29.png", width: double.infinity),
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
