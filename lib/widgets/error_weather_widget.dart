import 'package:flutter/material.dart';

class WeatherFailureWidget extends StatelessWidget {
  const WeatherFailureWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[900]!, Colors.blue, Colors.blue[50]!],
          begin: .topCenter,
          end: AlignmentGeometry.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          errMessage.split(':').last.trim(),
          textAlign: .center,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
