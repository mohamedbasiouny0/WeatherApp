import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:test7/main.dart';
import 'package:test7/models/weather_model.dart';

// ignore: must_be_immutable
class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel model = BlocProvider.of<GetCurrentWeatherCubit>(
      context,
    ).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getWeatherColor(model.weatherCondition),
            getWeatherColor(model.weatherCondition)[300]!,
            getWeatherColor(model.weatherCondition)[50]!,
          ],
          begin: .topCenter,
          end: .bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Spacer(flex: 3),

          Text(
            model.cityName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            'Updated at ${model.lastUpdated.hour}:${model.lastUpdated.minute}',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
          ),
          Spacer(flex: 1),

          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              model.imagePath != null
                  ? Image.network(
                      model.imagePath!.contains(RegExp('https:'))
                          ? model.imagePath!
                          : 'https:${model.imagePath}',
                    )
                  : SizedBox(),

              Text(
                model.avrTemp.round().toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              Column(
                children: [
                  Text('maxTemp : ${model.maxTemp.round()}'),
                  Text('minTemp : ${model.minTemp.round()}'),
                ],
              ),
            ],
          ),

          Spacer(flex: 1),

          Text(
            model.weatherCondition!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}
