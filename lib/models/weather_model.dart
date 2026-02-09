class WeatherModel {
  final String cityName;
  final DateTime lastUpdated;
  final String? imagePath;
  final double avrTemp;
  final double minTemp;
  final double maxTemp;
  String? weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.lastUpdated,
    this.imagePath,
    required this.avrTemp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherCondition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> jsonData) {
    return WeatherModel(
      cityName: jsonData['location']['name'],
      lastUpdated: DateTime.parse(jsonData['current']['last_updated']),
      imagePath:
          jsonData['forecast']['forecastday'][0]['day']['condition']['icon'],
      avrTemp: jsonData['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: jsonData['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: jsonData['forecast']['forecastday'][0]['day']['maxtemp_c'],
      weatherCondition:
          jsonData['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
