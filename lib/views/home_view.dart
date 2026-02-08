import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:test7/main.dart';
import 'package:test7/views/search_view.dart';
import 'package:test7/widgets/no_weather_info.dart';
import 'package:test7/widgets/weather_failure_info.dart';
import 'package:test7/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getWeatherColor(
          BlocProvider.of<GetCurrentWeatherCubit>(
            context,
          ).weatherModel?.condition,
        ),
        title: Text(
          'WeatherApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchView()),
                );
              },
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetCurrentWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherLoadedState) {
            return WeatherInfoBody();
          } else if (state is WeatherInitialState) {
            return NoWeatherInfo();
          } else if (state is WeatherFaliurState) {
            return WeatherFailureInfo(errMessage: state.errMessage);
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
