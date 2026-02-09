import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:test7/main.dart';
import 'package:test7/views/search_view.dart';
import 'package:test7/widgets/error_weather_widget.dart';
import 'package:test7/widgets/no_weather_info.dart';
import 'package:test7/widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition ==
                null
            ? Colors.blue[900]
            : getWeatherColor(
                BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition,
              ),

        elevation: 0,
        // surfaceTintColor: Colors.transparent,
        title: Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => SearchView()));
              },
              icon: Icon(Icons.search),
            ),
          ),
        ],

        foregroundColor:
            BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition ==
                null
            ? Colors.white
            : Colors.black,
      ),
      body: BlocBuilder<GetCurrentWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherInfo();
          } else if (state is WeatherLoadedState) {
            return WeatherInfo();
          } else if (state is WeatherFailureState) {
            return WeatherFailureWidget(errMessage: state.errMessage);
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}


// create states
// create cubit 
// create function
// provide cubit
// integrate cubit
// trigger cubit