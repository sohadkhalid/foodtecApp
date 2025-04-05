import 'package:flutter/material.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

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
                    const SizedBox(height: 16),

                    // text field
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Image.asset("assets/Input Text.png",
                            width: double.infinity),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 21),
                          child: TextField(
                            style: const TextStyle(fontSize: 12),
                            decoration: const InputDecoration(
                              hintText: "Search menu, restaurant or etc",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/Burger.png",
                  width: 370,
                  height: 203,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),

              Image.asset(
                "assets/Content.png",
                width: 370,
                height: 250,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // "Add to Cart"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(200, 50),
              ),
              child: const Text(
                "Add to Cart",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),

          // 🔹 Bottom Navigation Bar
          Image.asset(
            "assets/Bottom Nav.png",
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
