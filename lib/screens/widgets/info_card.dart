import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Icon infoIcon;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.infoIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 80,
          height: 80,
          child: Column(
            children: [
              Constants.h4,
              Icon(
                infoIcon.icon,
                size: 24,
                color: Colors.grey,
              ),
              Constants.h4,
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Constants.h4,
              Text(
                value,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
