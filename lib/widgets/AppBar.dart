import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBar() {
  return AppBar(
    title: const Text(
      'weather app',
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: 20,
      width: 20,
      child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
    ),
  );
}
