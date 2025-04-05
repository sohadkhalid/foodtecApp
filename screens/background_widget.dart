import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/iphone16.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}
