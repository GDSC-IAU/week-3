import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({
    super.key,
    required this.text,
    required this.text2,
    required this.text3,
  });

  String text;
  String text2;
  String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        width: 200.0,
        color: Colors.transparent,
        child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 19, color: Colors.white70),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    text2,
                    style: const TextStyle(fontSize: 45, color: Colors.white),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    text3,
                    style: const TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ],
              ),
            )));
  }
}
