// screens/weather_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/location_input.dart';
import '../widgets/weather_card.dart';
import 'dart:math';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String enteredLocation = '';
  String currentTemperature = '20°C'; // default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //the app bar
      appBar: AppBar(
        //the text style and stuff
        title: Text(
          'Weather App',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),

        //the image/icon :))
        leading: Image.asset(
          'assets/example/images/forecast_weather.png',
          width: 40,
          height: 40,
        ),
      ),

      //the body
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  //adds the shadow<3
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 20,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: Column(
                    children: [
                      //the title/divider
                      SizedBox(height: 16),
                      _buildRoundedContainerWithText('Cheack the weather!'),

                      //the location
                      LocationInput(
                        onLocationChanged: (location) {
                          setState(() {
                            enteredLocation = location;

                            //gets fake value for the temperature :))
                            currentTemperature = _getFakeWeatherData(location);
                          });
                        },
                      ),

                      SizedBox(height: 0),
                      WeatherCard(
                        location: enteredLocation,
                        temperature: currentTemperature,
                      ),

                      //the divider
                      SizedBox(height: 16),
                      _buildRoundedContainerWithText(''),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getFakeWeatherData(String location) {
    //i can replace this later with a real api i think...?

    final randomTemperature = Random().nextInt(11) + 20;
    return '$randomTemperature°C';
  }

  //the title box for looks
  Widget _buildRoundedContainerWithText(String text) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 105, 151),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
