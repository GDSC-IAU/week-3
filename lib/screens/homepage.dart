import 'package:flutter/material.dart';
import 'package:weather_app/helpers/constants.dart';
import 'package:weather_app/screens/widgets/info_card.dart';
import 'package:weather_app/screens/widgets/hourly_forecast.dart';
import 'package:weather_app/screens/widgets/daily_forecast.dart';

// TODO: 1. Import the meteocons_icons package for production
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class HomePage extends StatelessWidget {
  final ThemeMode themeMode;
  final void Function()? onPressed;

  const HomePage({
    super.key,
    required this.themeMode,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Icon modeIcon = themeMode == ThemeMode.dark
        ? const Icon(Icons.light_mode)
        : const Icon(Icons.dark_mode);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: themeMode == ThemeMode.dark
            ? Theme.of(context).colorScheme.secondary
            : Colors.black87,
        title: const Text('Weather App'),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: onPressed,
            icon: modeIcon,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Constants.h16,
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                    fillColor: Theme.of(context).colorScheme.primary,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              Constants.h24,

              const SizedBox(
                height: 230,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 16, color: Colors.grey),
                          Constants.w4,
                          Text(
                            "Saudi Arabia, Riyadh",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      Constants.h12,
                      Icon(Icons.sunny, size: 100, color: Colors.yellow),
                      Constants.h4,
                      Text(
                        "30°C",
                        style: TextStyle(fontSize: 28),
                      ),
                      Constants.h4,
                      Text(
                        "Sunny",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Constants.h8,
                      Text(
                        "H: 32°C / L: 28°C",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),

              Constants.h16,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoCard(
                    title: "Wind",
                    value: "5 km/h",
                    infoIcon: Icon(Meteocons.wind),
                  ),
                  Constants.w4,
                  InfoCard(
                    title: "Humidity",
                    value: "52%",
                    infoIcon: Icon(Typicons.temperatire),
                  ),
                  Constants.h4,
                  InfoCard(
                    title: "Rain",
                    value: "0%",
                    infoIcon: Icon(Meteocons.rain_inv),
                  ),
                ],
              ),
              Constants.h16,
              Card(
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HourlyForecast(
                        time: "Now",
                        value: "30",
                        infoIcon: Icon(Icons.wb_sunny),
                        icColor: Colors.yellow,
                      ),
                      HourlyForecast(
                        time: "12 PM",
                        value: "30",
                        infoIcon: Icon(Icons.wb_sunny),
                        icColor: Colors.yellow,
                      ),
                      HourlyForecast(
                        time: "4 PM",
                        value: "28",
                        infoIcon: Icon(Meteocons.hail_inv),
                      ),
                      HourlyForecast(
                        time: "8 PM",
                        value: "24",
                        infoIcon: Icon(Meteocons.cloud_inv),
                      ),
                      HourlyForecast(
                        time: "10 PM",
                        value: "28",
                        infoIcon: Icon(Meteocons.hail_inv),
                      ),
                      HourlyForecast(
                        time: "12 AM",
                        value: "22",
                        infoIcon: Icon(Meteocons.rain_inv),
                      ),
                      HourlyForecast(
                        time: "2 AM",
                        value: "20",
                        infoIcon: Icon(Meteocons.cloud_inv),
                      ),
                      HourlyForecast(
                        time: "4 AM",
                        value: "18",
                        infoIcon: Icon(Meteocons.rain_inv),
                      ),
                      HourlyForecast(
                        time: "6 AM",
                        value: "16",
                        infoIcon: Icon(Meteocons.rain_inv),
                      ),
                    ],
                  ),
                ),
              ),
              Constants.h16,

              Card(
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                  child: Column(
                    children: [
                      DailyForecast(
                        day: "Monday",
                        infoIcon: Icon(Icons.wb_sunny),
                        lowTemp: "28",
                        hiTemp: "32",
                        icColor: Colors.yellow,
                      ),
                      DailyForecast(
                        day: "Tuesday",
                        infoIcon: Icon(Meteocons.cloud_inv),
                        lowTemp: "24",
                        hiTemp: "30",
                      ),
                      DailyForecast(
                        day: "Wednesday",
                        infoIcon: Icon(Icons.wb_sunny),
                        lowTemp: "30",
                        hiTemp: "34",
                        icColor: Colors.yellow,
                      ),
                      DailyForecast(
                        day: "Thursday",
                        infoIcon: Icon(Meteocons.rain_inv),
                        lowTemp: "23",
                        hiTemp: "26",
                      ),
                      DailyForecast(
                        day: "Friday",
                        infoIcon: Icon(Meteocons.cloud_inv),
                        lowTemp: "28",
                        hiTemp: "32",
                      ),
                    ],
                  ),
                ),
              ),
              Constants.h24,
              // Weather Card
            ],
          ),
        ),
      ),
    );
  }
}
