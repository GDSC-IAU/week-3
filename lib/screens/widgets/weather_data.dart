
import 'dart:math';

class WeatherData {
  static String getFakeWeatherData(String location) {
    final randomTemperature = Random().nextInt(11) + 22;
    return '$randomTemperature°C';
  }
}
