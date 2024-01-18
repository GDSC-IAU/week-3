import 'package:flutter/material.dart';
import 'package:weather_app/widgets/DayWeatherTile.dart';
import 'package:weather_app/widgets/WeekWeatherTile.dart';
import 'package:weather_app/widgets/AppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color(0xFFF5F5F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '29°',
                      style: TextStyle(
                        fontSize: 55,
                      ),
                    ),
                    Text('Haze', style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset('assets/icons/big cloud with sun.png'),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'saudi arabia, dammam',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '33°/26° Feels like 35°',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(251, 251, 251, 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    DayWeatherEntry(
                      time: '8pm',
                      temperature: '29',
                      icon: 'assets/icons/cloud.png',
                    ),
                    SizedBox(width: 10),
                    DayWeatherEntry(
                      time: '9pm',
                      temperature: '28',
                      icon: 'assets/icons/cloud.png',
                    ),
                    SizedBox(width: 10),
                    DayWeatherEntry(
                      time: '10pm',
                      temperature: '27',
                      icon: 'assets/icons/thunderCloud.png',
                    ),
                    SizedBox(width: 10),
                    DayWeatherEntry(
                      time: '11pm',
                      temperature: '27',
                      icon: 'assets/icons/moon.png',
                    ),
                    SizedBox(width: 10),
                    DayWeatherEntry(
                      time: '12pm',
                      temperature: '27',
                      icon: 'assets/icons/cloud.png',
                    ),
                    DayWeatherEntry(
                      time: '12pm',
                      temperature: '27',
                      icon: 'assets/icons/cloud.png',
                    ),
                    SizedBox(width: 10),
                    DayWeatherEntry(
                      time: '11pm',
                      temperature: '27',
                      icon: 'assets/icons/moon.png',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(251, 251, 251, 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  children: [
                    WeatherEntryWeek(
                        day: 'Saturday',
                        rain: '4',
                        icon: 'assets/icons/thunderCloud.png',
                        minMax: '30°40°'),
                    WeatherEntryWeek(
                        day: 'Sunday',
                        rain: '10',
                        icon: 'assets/icons/cloud.png',
                        minMax: '30°40°'),
                    WeatherEntryWeek(
                        day: 'Monday',
                        rain: '50',
                        icon: 'assets/icons/thunderCloud.png',
                        minMax: '30°40°')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
