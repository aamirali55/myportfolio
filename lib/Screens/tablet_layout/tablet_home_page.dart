import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/utils/web_images.dart';

import 'package:myportfolio/widgets/custem_button_widget.dart';
import 'package:myportfolio/widgets/social_media_icon_container.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletHomePage extends StatefulWidget {
  bool isDarkMode;

  TabletHomePage({
    super.key,
    required this.isDarkMode,
  });

  @override
  _TabletHomePageState createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage> {
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
      height: 480,
      width: maxwidth,
      color: WebColors.backgroundColor(widget.isDarkMode),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                      fontSize: 14,
                      color: WebColors.textColorBold(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Aamir Ali",
                  style: TextStyle(
                      fontSize: 22,
                      color: WebColors.primaryColor(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Front End Software \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tDeveloper",
                  style: TextStyle(
                      fontSize: 30,
                      color: WebColors.textColorBold(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "frontend developer with a mission to craft stunning and\nuser-friendly websites. With a keen eye for design and a\npassion for code, I bring digital dreams to life.",
                  style: TextStyle(
                      fontSize: 11,
                      color: WebColors.textColor(widget.isDarkMode),
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButtonWidget(
                  isDarkMode: widget.isDarkMode,
                  width: 140,
                  height: 32,
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
                  height: 330,
                  width: 330,
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
