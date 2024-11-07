import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';

class TabletBox extends StatelessWidget {
  bool isDarkMode;
  final String imagepath;
  final String skill;
  TabletBox({
    super.key,
    required this.imagepath,
    required this.skill,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 256,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            WebColors.primaryColor(isDarkMode),
            WebColors.secondaryColor(isDarkMode)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            imagepath,
            height: 75,
            width: 75,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            skill,
            style: TextStyle(
                fontSize: 20,
                color: WebColors.textButtonColor(isDarkMode),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Lorem ipsum dolor sit amet\nconsectetur. Morbi diam nisi\nnam diam interdum",
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
