import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

class MyTheme {
  static const Color lightmodeBlackColor = Color(0xff1a1a1a);
  static const Color lightmodeGreyColor = Color(0xfff6f6f8);
  static const Color lightmodeWhiteColor = Color(0xffffffff);

  static const Color darkmodeBlackColor = Color(0xFF111015);
  static const Color darkmodeBlackColor50 = Color(0xFF1B1B1D);
  static const Color darkmodeWhiteColor = Color(0xfffefefe);

  static ThemeData lightTheme = ThemeData(
    primarySwatch: createMaterialColor(lightmodeBlackColor),
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightmodeGreyColor,
    colorScheme: const ColorScheme.light(
      primary: lightmodeWhiteColor,
      secondary: Colors.grey,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: createMaterialColor(darkmodeWhiteColor),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkmodeBlackColor,
    colorScheme: const ColorScheme.dark(
      primary: darkmodeBlackColor50,
      secondary: darkmodeWhiteColor,
    ),
  );
}
