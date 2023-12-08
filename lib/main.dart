// main.dart
import 'package:flutter/material.dart';
import 'screens/weather_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primaryColor: Colors.pink[100] ?? Colors.pink, // Light pink color
        colorScheme: ColorScheme.light(
          primary: Colors.pink[100] ?? Colors.pink,
          secondary: Colors.pink[200] ?? Colors.pinkAccent,
        ),
        scaffoldBackgroundColor: Colors.white,

        appBarTheme: 
        AppBarTheme(
          
          color: Colors.pink[300] ?? Colors.pink,
        ),

        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: WeatherScreen(),
    );
  }
}
