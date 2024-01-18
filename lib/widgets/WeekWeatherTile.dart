import 'package:flutter/material.dart';

class WeatherEntryWeek extends StatelessWidget {
  final String day;
  final String rain;
  final String icon;
  final String minMax;

  const WeatherEntryWeek({super.key, 
    required this.day,
    required this.rain,
    required this.icon,
    required this.minMax,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Text(day),
        const SizedBox(width: 85),
        Text('$rain%'),
        const SizedBox(width: 30),
        Image.asset(icon, width: 40, height: 40),
        const SizedBox(width: 30),
        Text(minMax)
      ],
    );
  }
}
