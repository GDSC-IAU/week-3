
import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String location;
  final String temperature;

  const WeatherCard({super.key, required this.location, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,

      // the card
      child: Card(
        color: Colors.pink[100] ?? Colors.pink.withOpacity(0.5),
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
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 243, 105, 151),),
                ),
              ),

              const SizedBox(height: 8),
              
              Center(
                child: Text(
                  'Temperature: $temperature',
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 243, 105, 151),), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
