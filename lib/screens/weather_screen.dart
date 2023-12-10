import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/location_input.dart';
import '../widgets/weather_card.dart';
import '../widgets/temperature_image.dart';
import '../widgets/weather_data.dart';
import '../widgets/rounded_container.dart';

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

      //the appbar
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



      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    //divider
                    child: const Column(
                      children: [
                        SizedBox(height: 16),
                        RoundedContainer(text: 'Check the weather!'),
                      ],
                    ),
                  ),


                  //temp image changes depending on the temp
                  TemperatureImage(currentTemperature: currentTemperature),
                  Container(
                    padding: const EdgeInsets.all(16),

                    //the loc input and the weather card

                    //the box under
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 68, 120).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Column(
                      children: [

                        //the input for location
                        LocationInput(
                          onLocationChanged: (location) {
                            setState(() {
                              enteredLocation = location;
                              
                              currentTemperature = WeatherData.getFakeWeatherData(location);
                            });
                          },
                        ),

                        //the out put for location and temp
                        SizedBox(height: 16),
                        WeatherCard(
                          location: enteredLocation,
                          temperature: currentTemperature,
                        ),
                      ],
                    ),
                  ),

                  
                  Container(
                    //divider
                    child: const Column(
                      children: [
                        SizedBox(height: 16),
                        RoundedContainer(text: '˚ʚ♡ɞ˚'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
