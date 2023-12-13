
import 'package:flutter/material.dart';

class TemperatureImage extends StatelessWidget {
  final String currentTemperature;

  const TemperatureImage({super.key, required this.currentTemperature});

  @override
  Widget build(BuildContext context) {
    double parsedTemperature =
        double.tryParse(currentTemperature.replaceAll('°C', '')) ?? 0;

    if (parsedTemperature < 25) {
      return Image.asset(
        'assets/example/images/temperature_25.png',
        width: 200,
        height: 200,
      );
    } else if (parsedTemperature <= 30) {
      return Image.asset(
        'assets/example/images/temperature_30.png',
        width: 200,
        height: 200,
      );
    } else if (parsedTemperature <= 35) {
      return Image.asset(
        'assets/example/images/temperature_too_high.png',
        width: 200,
        height: 200,
      );
      //default
    } else {
      return Image.asset(
        'assets/example/images/temperature_default.png',
        width: 200,
        height: 200,
      );
    }
  }
}
