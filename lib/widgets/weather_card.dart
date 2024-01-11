import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_status_model.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({key, required this.weatherData}) : super(key: key);

  final WeatherStatusModel weatherData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(weatherData.location, style: const TextStyle(fontSize: 20)),
            Text(weatherData.temperature),
            Text(weatherData.weatherDescription),
          ],
        ),
      ),
    );
  }
}



