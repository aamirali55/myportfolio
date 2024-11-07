import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_images.dart';
import 'package:myportfolio/widgets/custem_button_widget.dart';
import 'package:myportfolio/Screens/deskto_layout/custem%20widgets/box_container.dart';
import 'package:myportfolio/utils/web_colors.dart';

class DesktopServiceView extends StatelessWidget {
  bool isDarkMode;
  DesktopServiceView({
    super.key,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 585,
      width: maxWidth,
      color: WebColors.backgroundColor(isDarkMode),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Services",
              style: TextStyle(
                  fontSize: 50,
                  color: WebColors.textColorBold(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Creating visually stunning and responsive website designs tailored to\nyour brand's identity. I focus on user experience and modern design\nprinciples to capture your audience's attention and keep them engaged",
              style: TextStyle(
                  fontSize: 21,
                  color: WebColors.textColor(isDarkMode),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoxContainer(
                  isDarkMode: isDarkMode,
                  imagepath: WebImages.webIcon,
                  skill: "WebSite Development",
                ),
                const SizedBox(width: 20),
                BoxContainer(
                  isDarkMode: isDarkMode,
                  imagepath: WebImages.appIcon,
                  skill: "App Development",
                ),
                const SizedBox(width: 20),
                BoxContainer(
                  isDarkMode: isDarkMode,
                  imagepath: WebImages.uiIcon,
                  skill: "UI/UX",
                ),
                const SizedBox(width: 20),
                BoxContainer(
                  isDarkMode: isDarkMode,
                  imagepath: WebImages.stateIcon,
                  skill: "State Management",
                ),
              ],
            ),
            const SizedBox(height: 40),
            CustomButtonWidget(
              isDarkMode: isDarkMode,
              width: 188,
              height: 52,
              buttonName: "Download CV",
              function: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text("Failed to download CV: Contact on Email for VC"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
