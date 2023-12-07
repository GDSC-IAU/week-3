import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:weather_app/widgets/weather_today.dart';
import 'package:weather_app/widgets/details.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(children: <Widget>[
      Container(
        alignment: Alignment.topCenter,
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff09203F), Color(0xff537895)],
          ),
        ),
        child: Column(
          children: <Widget>[
            const Text("\n\nAl Khobar",
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 30.0,
                    color: Colors.white)),
            const Text(" 19°",
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 75.0,
                    color: Colors.white)),
            AvatarGlow(
              endRadius: 60.0,
              child: Material(
                elevation: 60.0,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundColor: Colors.blueGrey[100],
                  backgroundImage:
                      const AssetImage('assets/images/weather-2021-12-07.png'),
                ),
              ),
            ),
            const Text("Partly Cloudy\n  H:24° L:18°",
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 20.0,
                    color: Colors.white70)),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              WeatherToday(text:"\n1 PM",link:'assets/images/icons8-partly-cloudy-day-48.png',text2:"19°"),
              WeatherToday(text:"\nNow",link:'assets/images/icons8-partly-cloudy-day-48.png',text2:"19°"),
              WeatherToday(text:"\n3 PM",link:'assets/images/icons8-clouds-48.png',text2:"20°"),
              WeatherToday(text:"\n4 PM",link:'assets/images/icons8-night-wind-48.png',text2:"22°"),
              WeatherToday(text:"\n5 PM",link:'assets/images/icons8-night-wind-48.png',text2:"23°"),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
              Details(text:"FEELS LIKE",text2:"17°",text3:"Similar to the actual temperature."),
              Details(text:"HUMIDITY",text2:"67%",text3:"The dew point is 18° right now."),
              ],
            ),
          ],
        ),
      ),
    ])));
  }
}
