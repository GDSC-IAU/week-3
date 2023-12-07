import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class WeatherToday extends StatelessWidget {
  WeatherToday({
    super.key,
    required this.text,
    required this.link,
    required this.text2,
  });

  String text;
  String link;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(7),
        height: 180.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(60.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                text, //"\n1 PM"
                style: const TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Geneva'),
                textAlign: TextAlign.center,
              ),
              AvatarGlow(
                endRadius: 40.0,
                child: Material(
                  elevation: 60.0,
                  shape: const CircleBorder(),
                  child: CircleAvatar(
                    radius: 23.0,
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(
                        link), //'assets/images/icons8-partly-cloudy-day-48.png'
                  ),
                ),
              ),
              Text(
                text2, //"19°"
                style: const TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Geneva'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
