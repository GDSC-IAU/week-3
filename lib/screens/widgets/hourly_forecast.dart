import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants.dart';

class HourlyForecast extends StatelessWidget {
  final String time;
  final String value;
  final Icon infoIcon;
  final Color? icColor;
  const HourlyForecast({
    super.key,
    required this.time,
    required this.value,
    required this.infoIcon,
    this.icColor,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = icColor ?? Theme.of(context).colorScheme.secondary;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Constants.h4,
          Icon(
            infoIcon.icon,
            size: 24,
            color: iconColor,
          ),
          Constants.h4,
          Text(
            time,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Constants.h4,
          Text(
            "$value°C",
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
