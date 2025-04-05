import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/Elements.png', height: 450),
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar:
          Image.asset('assets/Bottom Navv.png', height: 80, fit: BoxFit.cover),
    );
  }
}
