import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';

class CustemHeaderList extends StatefulWidget {
  final Function(GlobalKey) scrollToSection;
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey contactKey;
   bool isDarkMode;

   CustemHeaderList({
    Key? key,
    required this.scrollToSection,
    required this.homeKey,
    required this.aboutKey,
    required this.servicesKey,
    required this.contactKey,
    required this.isDarkMode,
  }) : super(key: key);

  @override
  State<CustemHeaderList> createState() => _CustemHeaderListState();
}

class _CustemHeaderListState extends State<CustemHeaderList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => widget.scrollToSection(widget.homeKey),
              child:  Text(
                "Home",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  color: WebColors.textButtonColor(widget.isDarkMode),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => widget.scrollToSection(widget.aboutKey),
              child:  Text(
                "About Me",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  color: WebColors.textButtonColor(widget.isDarkMode),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => widget.scrollToSection(widget.servicesKey),
              child:  Text(
                "Services",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                 color: WebColors.textButtonColor(widget.isDarkMode),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => widget.scrollToSection(widget.servicesKey),
              child:  Text(
                "Projects",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  color: WebColors.textButtonColor(widget.isDarkMode),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => widget.scrollToSection(widget.contactKey),
              child:  Text(
                "Contact",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                 color: WebColors.textButtonColor(widget.isDarkMode),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
