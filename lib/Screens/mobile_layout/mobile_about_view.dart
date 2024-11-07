import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/utils/web_images.dart';
import 'package:myportfolio/widgets/slider_widget.dart';

class MobileAboutView extends StatelessWidget {
  bool isDarkMode;
  MobileAboutView({
    super.key,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 870,
      width: maxWidth,
      color: WebColors.backgroundColor(isDarkMode),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "About Me",
              style: TextStyle(
                  fontSize: 25,
                  color: WebColors.textColorBold(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "I am a skilled front-end developer, experience of over five years I possess the expertise to websites and web applications using HTML, CSS, JavaScript, and Bootstrap.",
              style: TextStyle(
                  fontSize: 15,
                  color: WebColors.textColor(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 310,
              width: 310,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    WebColors.primaryColor(isDarkMode),
                    WebColors.secondaryColor(isDarkMode)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.asset(
                    WebImages.about,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Website Development",
              style: TextStyle(
                  fontSize: 15,
                  color: WebColors.textColorBold(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600),
            ),
            const SliderWidget(
              size: 92.00,
              width: 310,
            ),
            Text(
              "App Development",
              style: TextStyle(
                  fontSize: 15,
                  color: WebColors.textColorBold(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600),
            ),
            const SliderWidget(
              size: 95.00,
              width: 310,
            ),
            Text(
              "UI/UX Design",
              style: TextStyle(
                  fontSize: 15,
                  color: WebColors.textColorBold(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600),
            ),
            const SliderWidget(
              size: 85.00,
              width: 310,
            ),
            Text(
              "State Management",
              style: TextStyle(
                  fontSize: 15,
                  color: WebColors.textColorBold(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600),
            ),
            const SliderWidget(
              size: 90.00,
              width: 310,
            )
          ],
        ),
      ),
    );
  }
}
