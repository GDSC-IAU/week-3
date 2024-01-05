import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                padding: EdgeInsets.all(30),
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
                    padding: EdgeInsets.all(30),
                    child: Image.asset('assets/icons/big cloud with sun.png'),
                  ),
                ],
              ),
            ],
          ),
          topContent(),
          dayWeatherData(),
          const SizedBox(height: 20),
          weekWeatherData()
        ],
      ),
    );
  }

  Center weekWeatherData() {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromRGBO(251, 251, 251, 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              WeatherEntryWeek(
                  day: 'Saturday',
                  rain: '4',
                  icon: 'assets/icons/cloud.png',
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
    );
  }

  Center dayWeatherData() {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(251, 251, 251, 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              WeatherEntry(
                time: '8pm',
                temperature: '29',
                icon: 'assets/icons/cloud.png',
              ),
              const SizedBox(width: 10),
              WeatherEntry(
                time: '9pm',
                temperature: '28',
                icon: 'assets/icons/moon.png',
              ),
              const SizedBox(width: 10),
              WeatherEntry(
                time: '10pm',
                temperature: '27',
                icon: 'assets/icons/moon.png',
              ),
              const SizedBox(width: 10),
              WeatherEntry(
                time: '11pm',
                temperature: '27',
                icon: 'assets/icons/moon.png',
              ),
              const SizedBox(width: 10),
              WeatherEntry(
                time: '12pm',
                temperature: '27',
                icon: 'assets/icons/moon.png',
              ),
              const SizedBox(width: 10),
              WeatherEntry(
                time: '1pm',
                temperature: '27',
                icon: 'assets/icons/moon.png',
              ),
              const SizedBox(width: 10),
              WeatherEntry(
                time: '2pm',
                temperature: '27',
                icon: 'assets/icons/moon.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container topContent() {
    return Container(
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
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'weather app',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 20,
        width: 20,
        child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
      ),
    );
  }
}

class WeatherEntry extends StatelessWidget {
  final String time;
  final String temperature;
  final String icon;

  WeatherEntry({
    required this.time,
    required this.temperature,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time),
        const SizedBox(
            width:
                10), // Adjust the horizontal spacing between time and temperature
        Image.asset(icon, width: 40, height: 40),
        Text('$temperature°C'),
        const SizedBox(height: 10), // Add spacing between entries
      ],
    );
  }
}

class WeatherEntryWeek extends StatelessWidget {
  final String day;
  final String rain;
  final String icon;
  final String minMax;

  WeatherEntryWeek({
    required this.day,
    required this.rain,
    required this.icon,
    required this.minMax,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Text(day),
        const SizedBox(width: 85),
        Text('$rain%'),
        const SizedBox(width: 30),
        Image.asset(icon, width: 40, height: 40),
        const SizedBox(width: 30),
        Text(minMax)
      ],
    );
  }
}
