import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:test7/models/weather_model.dart';
import 'package:test7/services/weatehr_service.dart';


class GetCurrentWeatherCubit extends Cubit<WeatherStates> {
  GetCurrentWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  Future<void> getCurrentWeather({required String cityName}) async {
    try {
      weatherModel = await WeatehrService(
        dio: Dio(),
      ).getCurrentWeather(cityName: cityName);

      emit(WeatherLoadedState());
    } on Exception catch (e) {
      weatherModel?.weatherCondition = null ;
      emit(WeatherFailureState(errMessage: e.toString()));
    }
  }
}
