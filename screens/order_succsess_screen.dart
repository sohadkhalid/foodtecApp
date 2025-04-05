import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 40),

                // Notification Icon
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 15),
                    child: Image.asset(
                      'assets/Notifii.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),

                // Checkout Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Checkout",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(height: 100),

                // Balloon Image
                Image.asset("assets/congrat.png", width: 200),

                // Success Text (3 lines)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "Your Order Done Successfully",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "You will get your order within 12min.",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Thanks for using our services",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Track Your Order Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Track Your Order",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),

                Spacer(),

                // Bottom Navigation Bar as Image
                Image.asset("assets/Bottom Nav.png",
                    width: double.infinity, fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
