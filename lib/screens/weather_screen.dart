import 'package:flutter/material.dart';

import '../widget/days_row.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 238, 244),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Container(
          //    width: MediaQuery.of(context).size.width*0.8,
          //   height: 50,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15),
          //     color: Colors.white,
          //     // image: DecorationImage(image: 
          //     // AssetImage('task3\assets\example\images\Rainy.png'))
          //   ),
          // ),
          DaysRow(
            text: "SUN",
            icon: Icon(Icons.sunny),
          ),
          DaysRow(text: "MON", icon: Icon(Icons.cloud)),
          DaysRow(text: "TUS", icon: Icon(Icons.cloudy_snowing)),
          DaysRow(text: "WED", icon: Icon(Icons.cloudy_snowing),),
          DaysRow(text: "THU", icon: Icon(Icons.cloud)),
          DaysRow(text: "FRI", icon: Icon(Icons.cloudy_snowing)),
          DaysRow(text: "SAT", icon: Icon(Icons.cloud))
        ],
      ),
    );
  }


}

