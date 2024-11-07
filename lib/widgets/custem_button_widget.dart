import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  bool isDarkMode;
  final double width;
  final double height;
  final String buttonName;
  final VoidCallback? function;

  CustomButtonWidget({
    super.key,
    required this.isDarkMode,
    required this.width,
    required this.height,
    required this.buttonName,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(Size(width, height)),
        backgroundColor:
            MaterialStateProperty.all(WebColors.primaryColor(isDarkMode)),
        foregroundColor:
            MaterialStateProperty.all(WebColors.button(isDarkMode)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      child: Text(
        buttonName,
        style:const  TextStyle(
          fontFamily: 'Roboto',
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
