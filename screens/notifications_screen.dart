import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 8), // iPhone Status Bar

              // Location Service + Input Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    //  Location Service
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/Top Bar.png",
                        width: 400,
                        height: 100,
                      ),
                    ),

                    const SizedBox(height: 11), //  space

                    //  Input Text with TextField
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        //  Input Text
                        Image.asset("assets/Input Text.png",
                            width: double.infinity),

                        // (TextField)
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
                    Image.asset("assets/Frame 41.png", width: double.infinity),
              ),

              GestureDetector(
                onTap: () {
                  //do smth on tap
                },
                child: Image.asset("assets/Notif.png", width: double.infinity),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
