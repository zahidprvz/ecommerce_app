import 'package:flutter/material.dart';

// Light mode theme
final ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
    background: Color(0xFFF5F5F5), // Light Grey
    primary: Color(0xFF607D8B), // Blue Grey
    secondary: Color(0xFFB0BEC5), // Light Blue Grey
    inversePrimary: Color.fromARGB(255, 0, 0, 0), // Black
  ),
);

// Dark mode theme
final ThemeData darkMode = ThemeData(
  colorScheme: const ColorScheme.dark(
    background: Color(0xFF121212), // Dark Grey
    primary: Color(0xFF64B5F6), // Blue
    secondary: Color(0xFF9E9E9E), // Grey
    surface: Color(0xFF212121), // Dark Surface
    onSurface: Colors.white, // White text on dark surface
  ),
);
