// widgets/weather_card.dart
import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String location;
  final String temperature;

  WeatherCard({required this.location, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,

      // the card
      child: Card(
        color: Colors.pink[100] ?? Colors.pink.withOpacity(0.5), // Set your desired color here
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Location: $location',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 243, 105, 151),), // Adjust text color
                ),
              ),

              SizedBox(height: 8),
              
              Center(
                child: Text(
                  'Temperature: $temperature',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 243, 105, 151),), // Adjust text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
