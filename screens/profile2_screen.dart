import 'package:flutter/material.dart';

class Profile2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset("assets/ElementsU.png"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text("Update"),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        bottomNavigationBar: Image.asset("assets/Bottom Navv.png"),
      ),
    );
  }
}
