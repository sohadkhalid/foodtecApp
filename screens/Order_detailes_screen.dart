import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/Frame 1984077834.png', height: 60),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset('assets/Frame 6824.png', height: 200),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset('assets/Group 6573.png', height: 80),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.green),
                SizedBox(width: 10),
                Text("123 Al-Madina Street, Abdali, Amman, Jordan"),
              ],
            ),
            Spacer(),
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child:
                      Text("Live Track", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar:
          Image.asset('assets/Bottom Navv.png', height: 60, fit: BoxFit.cover),
    );
  }
}
