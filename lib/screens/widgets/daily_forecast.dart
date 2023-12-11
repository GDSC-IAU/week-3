import 'package:flutter/material.dart';

class DailyForecast extends StatelessWidget {
  final String day;
  final Icon infoIcon;
  final String lowTemp;
  final String hiTemp;
  final Color? icColor;

  const DailyForecast({
    super.key,
    required this.day,
    required this.infoIcon,
    required this.lowTemp,
    required this.hiTemp,
    this.icColor,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = icColor ?? Theme.of(context).colorScheme.secondary;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              day,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Icon(
              infoIcon.icon,
              size: 24,
              color: iconColor,
            ),
          ),
          Expanded(
            child: Text(
              "$hiTemp°C   |  $lowTemp°C",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
