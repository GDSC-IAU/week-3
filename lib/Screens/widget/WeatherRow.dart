import 'package:flutter/material.dart';

class WeatherR extends StatelessWidget {
  const WeatherR({
    required this.icon,
    required this.text,
    required this.temperature,
    this.textColor = Colors.black,
    this.fontSize = 16.0,
    super.key, 
    });

     final Icon icon ;
     final String text;
     final double temperature;
     final Color textColor;
     final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8, 
             height: 60,
             decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
             color: Color.fromARGB(255, 32, 133, 234)
             ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              icon,const SizedBox(width: 2,),Text(
               text,
               style: TextStyle(color: textColor,
               fontSize: fontSize,)
            ),
              Text(
             '${temperature.toStringAsFixed(1)}°C',
              style: TextStyle(
              color: textColor,
              fontSize: fontSize,
          ),
        ),
       ])
    );
  }
}

