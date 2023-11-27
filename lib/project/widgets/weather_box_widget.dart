import 'package:flutter/material.dart';
import 'package:weather_app/project/models/weather_model.dart';

class WeatherBox extends StatelessWidget {
  final WeatherModel weatherModel;

  const WeatherBox({
    required this.weatherModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        tileColor: const Color.fromARGB(255, 218, 232, 229),
        title: Text(weatherModel.city),
        subtitle: Text(weatherModel.country),
        trailing: Text(weatherModel.temperature.toString()),
        leading: SizedBox(
          height: double.infinity,
          child: getIcon(),
        ),
      ),
    );
  }

  getIcon() {
    return switch (weatherModel.temperature) {
      <= 0 => const Icon(Icons.severe_cold, color: Colors.blue),
      > 0 && <= 15 => const Icon(Icons.ac_unit, color: Colors.blue),
      > 15 && <= 20 => const Icon(Icons.cloud, color: Colors.blue),
      > 20 && <= 25 =>
        const Icon(Icons.sunny, color: Color.fromARGB(255, 229, 255, 0)),
      _ => const Icon(Icons.sunny, color: Colors.orange),
    };
  }
}
