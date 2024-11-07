import 'package:flutter/material.dart';

class WebColors {
  static Color primaryColor(bool isDarkMode) {
    return isDarkMode ? const Color(0xFFFD6F00) : const Color(0xFFFD6F00);
  }

  static Color secondaryColor(bool isDarkMode) {
    return isDarkMode ? const Color(0xFFF09962) : const Color(0xFFF09962);
  }

  static Color backgroundColor(bool isDarkMode) {
    return isDarkMode ? const Color(0xFFF5F5F5) : Colors.black;
  }

  static Color textColor(bool isDarkMode) {
    return isDarkMode ? const Color(0xFF000000) : Colors.white;
  }

  static Color textColorBold(bool isDarkMode) {
    return isDarkMode ? const Color(0xFF000000) : const Color(0xFF870F0F);
  }

  static Color button(bool isDarkMode) {
    return isDarkMode ? Colors.white :const  Color(0xFF8C1F1F);
  }

  static Color textButtonColor(bool isDarkMode) {
    return isDarkMode ? const Color(0xFF015963) : const Color(0xFF870F0F);
  }
}
