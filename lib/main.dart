import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
    
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget{  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
       title:  Text('What\'s the weather toady?',
               style: TextStyle(color: Colors.black),
       ), 

         backgroundColor: Colors.lightBlue[100],
        
        ),
       backgroundColor: Colors.lightBlue[100],
       body:Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Qatif',
            style: TextStyle(fontSize: 25),
          ),
          Text('Friday 5:00 PM'),
          

           Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage( 
                image:AssetImage('assets/example/images/IMG_9071.PNG') ,
               fit: BoxFit.fitWidth

              )
            ),
            ),
        Text('23C',style: TextStyle(fontSize: 20),)
        ],
        ),
       ),
          floatingActionButton:FloatingActionButton (
             onPressed: () {},
               child: Icon(Icons.search)
        ),
    );
  }
}
