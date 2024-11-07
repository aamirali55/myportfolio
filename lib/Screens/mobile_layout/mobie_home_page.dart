import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/utils/web_images.dart';

import 'package:myportfolio/widgets/custem_button_widget.dart';
import 'package:myportfolio/widgets/social_media_icon_container.dart';
import 'package:url_launcher/url_launcher.dart';

class MobieHomePage extends StatefulWidget {
  bool isDarkMode;
  MobieHomePage({
    super.key,
    required this.isDarkMode,
  });

  @override
  _MobieHomePageState createState() => _MobieHomePageState();
}

class _MobieHomePageState extends State<MobieHomePage> {
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
      height: 850,
      width: maxwidth,
      color: WebColors.backgroundColor(widget.isDarkMode),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Hi I am",
                style: TextStyle(
                    fontSize: 14,
                    color: WebColors.textColorBold(widget.isDarkMode),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Aamir Ali",
                style: TextStyle(
                    fontSize: 20,
                    color: WebColors.primaryColor(widget.isDarkMode),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              "Front End Software \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tDeveloper",
              style: TextStyle(
                  fontSize: 25,
                  color: WebColors.textColorBold(widget.isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700),
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
                    WebColors.primaryColor(widget.isDarkMode),
                    WebColors.secondaryColor(widget.isDarkMode),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding:const  EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.asset(
                    WebImages.profile,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SocialMediaIconsContainer(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "frontend developer with a mission to craft stunning and user-friendly websites. With a keen eye for design and a passion for code, I bring digital dreams to life.",
              style: TextStyle(
                  fontSize: 15,
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
              height: 50,
              buttonName: "Hire Me",
              function: () {
                launchFiverr();
              },
            ),
          ],
        ),
      ),
    );
  }
}
