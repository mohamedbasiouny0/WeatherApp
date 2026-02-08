class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {}

class WeatherFaliurState extends WeatherStates {
  final String errMessage;

  WeatherFaliurState({required this.errMessage});
}
