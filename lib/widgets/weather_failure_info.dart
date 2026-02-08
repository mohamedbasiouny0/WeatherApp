import 'package:flutter/material.dart';

class WeatherFailureInfo extends StatelessWidget {
  const WeatherFailureInfo({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage.split(':').last.trim(),
        style: TextStyle(fontSize: 24),
        textAlign: .center,
      ),
    );
  }
}
