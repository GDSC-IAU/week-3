import 'package:flutter/material.dart';

class CountryListWidget extends StatelessWidget {
  CountryListWidget({Key? key}) : super(key: key);

  final Map<String, String> countryTemperatures = {
    'Saudi Arabia': '25°C',
    'China': '22°C',
    'India': '30°C',
    'Brazil': '28°C',
    'Russia': '15°C',
    'Japan': '26°C',
    'Germany': '20°C',
    'United Kingdom': '18°C',
    'France': '21°C',
    'Italy': '24°C',
  };

  @override
  Widget build(BuildContext context) {
    const double boxWidth = 100.0; // Adjust the width as needed

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: countryTemperatures.length,
        itemBuilder: (context, index) {
          final String countryName = countryTemperatures.keys.elementAt(index);
          final String temperature = countryTemperatures.values.elementAt(index);

          return Container(
            width: boxWidth,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color.fromARGB(255, 243, 105, 151),

              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 235, 167, 231).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        SizedBox(
        height: 20
                  Text(
                    countryName,
                    overflow: TextOverflow.ellipses
                    style: const TextStyle(fontSize: 16, color: Colors.white ,  fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    
                  ),),
                  const SizedBox(height: 8.0),
                  Text(
                    temperature,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
