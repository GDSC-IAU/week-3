import 'package:flutter/material.dart';

class DaysRow extends StatelessWidget {
  const DaysRow({
    required this.text,
    required this.icon,
    super.key,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           icon,
           Text(text),
           const SizedBox()
    
      ]),
    
    );
  }
}
