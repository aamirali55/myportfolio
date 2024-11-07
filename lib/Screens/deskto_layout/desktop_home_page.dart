import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/utils/web_images.dart';

import 'package:myportfolio/widgets/custem_button_widget.dart';
import 'package:myportfolio/widgets/social_media_icon_container.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHomePage extends StatefulWidget {
  bool isDarkMode;
  DesktopHomePage({
    super.key,
    required this.isDarkMode,
  });

  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  void launchFiverr() async {
    const url = 'https://www.fiverr.com/aamirsoomro360';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double maxwidth = MediaQuery.of(context).size.width;

    return Container(
      height: 617.24,
      width: maxwidth,
      color: WebColors.backgroundColor(widget.isDarkMode),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi I am",
                  style: TextStyle(
                      fontSize: 24,
                      color: WebColors.textColorBold(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Aamir Ali",
                  style: TextStyle(
                      fontSize: 32,
                      color: WebColors.primaryColor(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Front End Software \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tDeveloper",
                  style: TextStyle(
                      fontSize: 50,
                      color: WebColors.textColorBold(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "frontend developer with a mission to craft stunning and\nuser-friendly websites. With a keen eye for design and a\npassion for code, I bring digital dreams to life.",
                  style: TextStyle(
                      fontSize: 21,
                      color: WebColors.textColor(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButtonWidget(
                  isDarkMode: widget.isDarkMode,
                  width: 188,
                  height: 52,
                  buttonName: "Hire Me",
                  function: () {
                    launchFiverr();
                  },
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 360,
                  width: 360,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        WebColors.primaryColor(widget.isDarkMode),
                        WebColors.secondaryColor(widget.isDarkMode),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.asset(
                        WebImages.profile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SocialMediaIconsContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
