import 'package:dio/dio.dart';
import 'package:test7/models/weather_model.dart';

class WeatehrService {
  final Dio dio;

  WeatehrService({required this.dio});
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'ebe40a1e37c649bd84951306260702';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
      );

      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      final String? errorMessage =
          e.response?.data['error']['message'] ??
          'Oops there was an error, try again later !';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops there was an error, try again later !');
    }
  }
}

//Oops there was an error, try again later !
