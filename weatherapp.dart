import 'package:flutter/material.dart';

void main() => runApp(MyWeatherApp());

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  final String location = 'City, Country'; // Replace with actual location

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Weather in',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              location,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.cloud,
              size: 80,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Temperature: 25°C', // Replace with actual temperature
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Condition: Cloudy', // Replace with actual condition
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality to refresh weather
                print('Refreshing weather...');
              },
              child: Text('Refresh Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
