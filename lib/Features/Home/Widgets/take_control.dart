import 'package:flutter/material.dart';

class TakeControl extends StatelessWidget {
  const TakeControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          children: [
            Text(
              "Take control of your healthcare ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "finances today!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
            Image.asset("assets/images/take_control.png"),
          ],
        ),
      ),
    );
  }
}