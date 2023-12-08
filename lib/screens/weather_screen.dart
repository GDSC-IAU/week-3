// screens/weather_screen.dart
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
  String enteredLocation = 'saudi arabia';
  String currentTemperature = '20°C'; // default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: Image.asset(
          'assets/example/images/forecast_weather.png',
          width: 40,
          height: 40,
        ),
      ),

      // body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(

              //add a shadow
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 20,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),

              child: Column(
                children: [
                  // the divider
                  SizedBox(height: 16),
                  _buildRoundedContainerWithText('Check the weather!'),

                  // temperature image
                  _buildTemperatureImage(currentTemperature),

                  LocationInput(
                    onLocationChanged: (location) {
                      setState(() {
                        enteredLocation = location;
                        currentTemperature = _getFakeWeatherData(location);
                      });
                    },
                  ),

                  SizedBox(height: 16),
                  WeatherCard(
                    location: enteredLocation,
                    temperature: currentTemperature,
                  ),

                  SizedBox(height: 16),
                  _buildRoundedContainerWithText(''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getFakeWeatherData(String location) {
    final randomTemperature = Random().nextInt(11) + 22;
    return '$randomTemperature°C';
  }

  Widget _buildTemperatureImage(String currentTemperature) {


    double parsedTemperature = double.tryParse(currentTemperature.replaceAll('°C', '')) ?? 0;

 if (parsedTemperature < 25) {
      return Image.asset(
        'assets/example/images/temperature_25.png',
        width: 200,
        height: 200,
      );
    } else if (parsedTemperature <= 30) {
      return Image.asset(
        'assets/example/images/temperature_30.png',
        width: 200,
        height: 200,
      );
    } else if (parsedTemperature <= 35) {
      return Image.asset(
        'assets/example/images/temperature_toohigh.png',
        width: 200,
        height: 200,
      );
      //defult
    } else {
      return Image.asset(
        'assets/example/images/temperature_defult.png',
        width: 200,
        height: 200,
      );
    }
  }

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
