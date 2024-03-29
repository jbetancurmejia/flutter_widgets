import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.deepPurpleAccent,
  Colors.orangeAccent,
  Colors.red,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor <= colorList.length - 1,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
