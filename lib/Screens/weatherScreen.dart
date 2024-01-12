import 'package:flutter/material.dart';
import 'package:weather_app/Screens/widget/weatherRow.dart';


class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
     super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Weather app')),
        backgroundColor: Color.fromARGB(255, 170, 89, 232),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           WeatherR(
             text: 'Riyadh : Sunny',
             icon: Icon(Icons.sunny ,color: Colors.amber),
             temperature: 25.5,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
           SizedBox(
            height: 20,
          ),
          WeatherR(
             text: 'Canada : snowing',
             icon: Icon(Icons.sunny_snowing ,color: Color.fromARGB(255, 142, 234, 243)),
             temperature: -8,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
                SizedBox(
            height: 20,
          ),
               WeatherR(
             text: 'Tabuk : cloudy',
             icon: Icon(Icons.cloudy_snowing ,color: Color.fromARGB(255, 190, 215, 243)),
             temperature: -1,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
                SizedBox(
            height: 20,
          ),
               WeatherR(
             text: 'Jeddah : sunny',
             icon: Icon(Icons.wb_sunny,color: Color.fromARGB(255, 230, 174, 43)),
             temperature: 50,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
                SizedBox(
            height: 20,
          ),
               WeatherR(
             text: 'Russia : snowing ',
             icon: Icon(Icons.ac_unit ,color: Color.fromARGB(255, 175, 246, 246)),
             temperature: -11,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
                SizedBox(
            height: 20,
          ),
          WeatherR(
             text: 'Columbia : windy',
             icon: Icon(Icons.wb_cloudy ,color: Color.fromARGB(255, 255, 255, 255)),
             temperature: -4,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
               SizedBox(
            height: 20,
          ),
          WeatherR(
             text: 'Australia : Sunny',
             icon: Icon(Icons.sunny ,color: Colors.amber),
             temperature: 24.5,
             textColor: Colors.white,
             fontSize: 18.0, 
               ),
        ]),
      )
    );
  }
}