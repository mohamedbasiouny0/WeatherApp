import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:test7/views/home_view.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCurrentWeatherCubit(),
      child: Builder(
        builder: (context) =>
            BlocBuilder<GetCurrentWeatherCubit, WeatherStates>(
              builder: (context, state) {
                return MaterialApp(
                  home: HomeView(),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    useMaterial3: true,
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: getWeatherColor(
                        BlocProvider.of<GetCurrentWeatherCubit>(
                          context,
                        ).weatherModel?.weatherCondition,
                      ),
                    ),
                  ),
                );
              },
            ),
      ),
    );
  }
}

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) {
    return Colors.grey;
  } else if (condition == 'Sunny' || condition == 'Clear') {
    return Colors.orange;
  } else if (condition == 'Partly cloudy' ||
      condition == 'Cloudy' ||
      condition == 'Overcast') {
    return Colors.blueGrey;
  } else if (condition == 'Mist' ||
      condition == 'Fog' ||
      condition == 'Freezing fog') {
    return Colors.grey;
  } else if (condition == 'Patchy rain possible' ||
      condition == 'Patchy light rain' ||
      condition == 'Light rain' ||
      condition == 'Moderate rain' ||
      condition == 'Moderate rain at times' ||
      condition == 'Heavy rain' ||
      condition == 'Heavy rain at times' ||
      condition == 'Light rain shower' ||
      condition == 'Moderate or heavy rain shower' ||
      condition == 'Torrential rain shower') {
    return Colors.blue;
  } else if (condition == 'Patchy snow possible' ||
      condition == 'Light snow' ||
      condition == 'Patchy moderate snow' ||
      condition == 'Moderate snow' ||
      condition == 'Patchy heavy snow' ||
      condition == 'Heavy snow' ||
      condition == 'Blowing snow' ||
      condition == 'Blizzard' ||
      condition == 'Ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'Thundery outbreaks possible' ||
      condition == 'Patchy light rain with thunder' ||
      condition == 'Moderate or heavy rain with thunder' ||
      condition == 'Patchy light snow with thunder' ||
      condition == 'Moderate or heavy snow with thunder') {
    return Colors.deepPurple;
  } else {
    return Colors.teal; // fallback
  }
}


