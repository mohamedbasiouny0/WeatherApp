import 'package:flutter/material.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search on a city by tapping on the search icon in the AppBar to get the weather information',
        style: TextStyle(fontSize: 24),
        textAlign: .center,
      ),
    );
  }
}
