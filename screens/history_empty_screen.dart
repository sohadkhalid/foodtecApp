import 'package:flutter/material.dart';

class HistoryEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Bar
          Image.asset(
            'assets/Top Bar.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Tabs (Cart & History)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              'assets/Frame 1984077818 h.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Empty Cart Image
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Empty-amico 1.png',
                  width: 250,
                ),
                const SizedBox(height: 20),
                const Text(
                  'History Empty',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "You don't have order any foods before",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Image.asset(
        'assets/Bottom Nav.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
