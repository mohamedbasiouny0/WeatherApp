import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:test7/models/weather_model.dart';
import 'package:test7/services/weather_service.dart';

class GetCurrentWeatherCubit extends Cubit<WeatherStates> {
  GetCurrentWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  Future<void> getCurrentWeather(String cityName) async {
    try {
      weatherModel =await WeatherService(
        dio: Dio(),
      ).getCurrentWeather(cityName);

      emit(WeatherLoadedState());
    } on Exception catch (e) {
      emit(WeatherFaliurState(errMessage: e.toString()));
    }
  }
}
