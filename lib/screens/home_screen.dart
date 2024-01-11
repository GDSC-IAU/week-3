import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_status_model.dart';
import 'package:weather_app/widgets/weather_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _locationController = TextEditingController();
  WeatherStatusModel? _weatherData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://i.imgur.com/7p1SkiR.png', 
              ),
            ),
            const SizedBox(height: 16.0), 

           
            TextField(
              controller: _locationController,
              decoration: const InputDecoration(
                labelText: 'Enter Location',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _weatherData = WeatherStatusModel(
                  location: _locationController.text,
                  temperature: '25°C',
                  weatherDescription: 'Sunny',
                );
                setState(() {});
              },
              child: const Text('Get Weather'),
            ),
            const SizedBox(height: 32.0),

            
            if (_weatherData != null) ...[
              const SizedBox(height: 16.0),
              WeatherCard(weatherData: _weatherData!), 
            ] else
              const Text('Weather data not available'),
          ],
        ),
      ),
    );
  }
}
