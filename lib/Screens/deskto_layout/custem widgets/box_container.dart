import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';

class BoxContainer extends StatelessWidget {
   bool isDarkMode;
  final String imagepath;
  final String skill;
  BoxContainer({super.key, required this.imagepath, required this.skill, required this.isDarkMode,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 266,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient:  LinearGradient(
          colors: [WebColors.primaryColor(isDarkMode), WebColors.secondaryColor(isDarkMode)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            imagepath,
            height: 80,
            width: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            skill,
            style:  TextStyle(
                fontSize: 21,
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
