import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search on a city',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (cityName) {
              BlocProvider.of<GetCurrentWeatherCubit>(
                context,
              ).getCurrentWeather(cityName);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              label: Text('Search'),
              hintText: 'Enter the city name',
              contentPadding: EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 24,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
