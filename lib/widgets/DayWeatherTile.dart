import 'package:flutter/material.dart';

class DayWeatherEntry extends StatelessWidget {
  final String time;
  final String temperature;
  final String icon;

  const DayWeatherEntry({
    super.key,
    required this.time,
    required this.temperature,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time),
        const SizedBox(
            width:
                10), // Adjust the horizontal spacing between time and temperature
        Image.asset(icon, width: 40, height: 40),
        Text('$temperature°C'),
        const SizedBox(height: 10), // Add spacing between entries
      ],
    );
  }
}
