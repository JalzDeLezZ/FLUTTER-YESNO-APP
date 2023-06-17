import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 0, 255, 208);

List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.pink,
  Colors.purple,
  Colors.lightBlue,
];

class AppTheme {
  final int selectedColor;
  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'selectedColor must be between 0 and ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}
