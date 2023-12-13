import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final String text;

  const RoundedContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 105, 151),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
