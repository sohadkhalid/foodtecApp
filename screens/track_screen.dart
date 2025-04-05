import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///Map image as BackGround
          Positioned.fill(
            child: Image.asset(
              'assets/trackk.png', // Map image
              fit: BoxFit.cover,
            ),
          ),

          ///   The path
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.2,
            right: MediaQuery.of(context).size.width * 0.2,
            child: Image.asset(
              'assets/pathh.png', // صورة المسار متكاملة
              width: 300,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),

          /// Text Box with arrow
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
                      prefixIcon: Icon(Icons.search, color: Colors.green),
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

          ///  On the way Box
          Positioned(
            bottom: 69,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 10, spreadRadius: 2)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Order Situation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("On The Way",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("All Detaies",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Placed",
                          style: TextStyle(color: Colors.green, fontSize: 14)),
                      Text("On The Way",
                          style: TextStyle(color: Colors.green, fontSize: 14)),
                      Text("Delivered",
                          style: TextStyle(color: Colors.green, fontSize: 14)),
                    ],
                  ),

                  /// DashLines
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 4, color: Colors.green.withOpacity(0.6))),
                      Expanded(
                          child: Container(
                              height: 4, color: Colors.green.withOpacity(0.3))),
                      Expanded(
                          child: Container(height: 4, color: Colors.white)),
                    ],
                  ),

                  SizedBox(height: 8),

                  /// Driver Information
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 25,
                        child:
                            Icon(Icons.person, size: 30, color: Colors.white),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Delivery Hero",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          Text("Aleksandr V. ⭐ 4.9",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.call, color: Colors.green),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.chat_bubble, color: Colors.orange),
                          onPressed: () {}),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // The location
                  Image.asset('assets/Group 3157.png'),
                ],
              ),
            ),
          ),

          // Nav Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Bottom Navv.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
