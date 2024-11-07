import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';

class BoxContainerMobile extends StatelessWidget {
  bool isDarkMode;
  final String imagepath;
  final String skill;
  BoxContainerMobile({
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
            height: 12,
          ),
          Image.asset(
            imagepath,
            height: 73,
            width: 73,
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            skill,
            style: TextStyle(
                fontSize: 18,
                color: WebColors.textButtonColor(isDarkMode),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text(
            "Lorem ipsum dolor sit amet\nconsectetur. Morbi diam nisi\nnam diam interdum",
            style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
