import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(15, 5, 119, 56);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.pink
];

class AppTheme {
  final int selectColor;

  AppTheme({required this.selectColor})
      : assert(selectColor >= 0 && selectColor<= _colorThemes.length -1 ,
            'Colors must be between 0 and  ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectColor]);
  }
}
