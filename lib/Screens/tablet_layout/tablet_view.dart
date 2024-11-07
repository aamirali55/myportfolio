import 'package:flutter/material.dart';

import 'package:myportfolio/Screens/deskto_layout/desktop_contact.dart';
import 'package:myportfolio/Screens/deskto_layout/desktop_footer_view.dart';
import 'package:myportfolio/Screens/deskto_layout/desktop_header.dart';

import 'package:myportfolio/Screens/tablet_layout/tablet_about_view.dart';
import 'package:myportfolio/Screens/tablet_layout/tablet_home_page.dart';
import 'package:myportfolio/Screens/tablet_layout/tablet_service_view.dart';
import 'package:myportfolio/utils/web_colors.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  final ScrollController _scrollController = ScrollController();
  bool isDarkMode = true;


  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.backgroundColor(isDarkMode),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            DesktopHeader(
              toggleDarkMode: toggleDarkMode,
              scrollToSection: _scrollToSection,
              homeKey: _homeKey,
              aboutKey: _aboutKey,
              servicesKey: _servicesKey,
              contactKey: _contactKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            TabletHomePage(
              key: _homeKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            TabletAboutView(
              key: _aboutKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            TabletServiceView(
              key: _servicesKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            DesktopContact(
              key: _contactKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 20),
            DesktopFooterView(
              scrollToSection: _scrollToSection,
              homeKey: _homeKey,
              aboutKey: _aboutKey,
              servicesKey: _servicesKey,
              contactKey: _contactKey,
              isDarkMode: isDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}
