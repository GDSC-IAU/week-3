import 'package:flutter/material.dart';
import 'package:weather_app/project/models/weather_model.dart';
import 'package:weather_app/project/widgets/weather_box_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  "Weather Forecast",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView buildList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final weather = weatherList[index];
        return WeatherBox(weatherModel: weather);
      },
      itemCount: weatherList.length,
    );
  }
}
