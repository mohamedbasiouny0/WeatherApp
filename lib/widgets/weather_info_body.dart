import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:test7/main.dart';
import 'package:test7/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    final WeatherModel model = BlocProvider.of<GetCurrentWeatherCubit>(
      context,
    ).weatherModel!;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getWeatherColor(model.condition),
            getWeatherColor(model.condition)[300]!,
            getWeatherColor(model.condition)[50]!,
          ],
          begin: .topCenter,
          end: .bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Spacer(flex: 6),
          Text(
            model.cityName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'updated at ${model.lastUpdated.hour}:${model.lastUpdated.minute}',
            style: TextStyle(fontSize: 22),
          ),
          Spacer(),

          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              model.imagePath != null
                  ? Image.network(
                      model.imagePath!.contains('https:')
                          ? model.imagePath!
                          : 'https:${model.imagePath}',
                      height: 50,
                    )
                  : SizedBox(),
              Text(
                model.currentTemp.round().toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Column(
                children: [
                  Text('maxTemp:${model.minTemp.round().toString()}'),
                  Text('maxTemp:${model.maxTemp.round().toString()}'),
                ],
              ),
            ],
          ),
          Spacer(),

          Text(
            model.condition,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Spacer(flex: 7),
        ],
      ),
    );
  }
}
