class WeatherModel {
  final String cityName;
  final String? imagePath;
  final DateTime lastUpdated;
  final String condition;
  final double currentTemp;
  final double minTemp;
  final double maxTemp;

  WeatherModel({
    required this.cityName,
    required this.imagePath,
    required this.lastUpdated,
    required this.condition,
    required this.currentTemp,
    required this.minTemp,
    required this.maxTemp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    cityName: json['location']['name'],
    imagePath: json['current']['condition']['icon'],
    lastUpdated: DateTime.parse(json['current']['last_updated']),
    condition: json['current']['condition']['text'],
    currentTemp: json['current']['temp_c'],
    minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
  );
}
