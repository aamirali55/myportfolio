import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_images.dart';

import 'package:myportfolio/widgets/custem_header_List.dart';
import 'package:myportfolio/utils/web_colors.dart';

class DesktopHeader extends StatefulWidget {
  final void Function(GlobalKey) scrollToSection;
  void Function() toggleDarkMode;
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey contactKey;
  bool isDarkMode;

  DesktopHeader({
    super.key,
    required this.toggleDarkMode,
    required this.scrollToSection,
    required this.homeKey,
    required this.aboutKey,
    required this.servicesKey,
    required this.contactKey,
    required this.isDarkMode,
  });

  @override
  _DesktopHeaderState createState() => _DesktopHeaderState();
}

class _DesktopHeaderState extends State<DesktopHeader> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 67,
      width: maxWidth,
      color: WebColors.backgroundColor(widget.isDarkMode),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 67,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    WebColors.primaryColor(widget.isDarkMode),
                    WebColors.secondaryColor(widget.isDarkMode)
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
                WebImages.logo,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            CustemHeaderList(
              scrollToSection: widget.scrollToSection,
              homeKey: widget.homeKey,
              aboutKey: widget.aboutKey,
              servicesKey: widget.servicesKey,
              contactKey: widget.contactKey,
              isDarkMode: widget.isDarkMode,
            ),
            const SizedBox(width: 16),
            IconButton(
              icon: Icon(
                widget.isDarkMode ? Icons.nights_stay : Icons.wb_sunny,
                color:
                    widget.isDarkMode ? Colors.black : const Color(0xFFEBAD03),
              ),
              onPressed: widget.toggleDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}
