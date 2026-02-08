import 'package:dio/dio.dart';
import 'package:test7/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService({required this.dio});

  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'ebe40a1e37c649bd84951306260702';

  Future<WeatherModel> getCurrentWeather(String cityName) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
      );

      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      final String? errMessage =
          e.response?.data['error']['message'] ??
          'Oops there was an error,try again!';

      throw Exception(errMessage);
    } catch (e) {
      throw Exception('Oops there was an error, try again!');
    }
  }
}
