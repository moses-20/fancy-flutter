import 'package:flutter/material.dart';

class Bicycle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.bike_scooter,
        size: 150.0,
        color: Colors.teal,
      ),
    );
  }
}
