import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/widgets/custem_header_List.dart';
import 'package:myportfolio/widgets/social_media_icon_container.dart';

class DesktopFooterView extends StatelessWidget {
  final void Function(GlobalKey) scrollToSection;
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey contactKey;
  bool isDarkMode;
  DesktopFooterView({
    super.key,
    required this.scrollToSection,
    required this.homeKey,
    required this.aboutKey,
    required this.servicesKey,
    required this.contactKey,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 250,
      width: maxWidth,
      color: WebColors.backgroundColor(isDarkMode),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 67,
            width: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  WebColors.primaryColor(isDarkMode),
                  WebColors.secondaryColor(isDarkMode)
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(28),
              ),
            ),
            child: Image.asset(
              "assets/images/Logo.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          CustemHeaderList(
            scrollToSection: scrollToSection,
            homeKey: homeKey,
            aboutKey: aboutKey,
            servicesKey: servicesKey,
            contactKey: contactKey,
            isDarkMode: isDarkMode,
          ),
          const SizedBox(height: 20),
          SocialMediaIconsContainer(),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: WebColors.textButtonColor(isDarkMode),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: maxWidth,
              child: const Center(
                child: Text(
                  "© 2024 Aamir Ali All Rights Reserved , Inc.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
