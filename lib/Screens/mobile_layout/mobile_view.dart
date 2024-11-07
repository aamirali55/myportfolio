import 'package:flutter/material.dart';

import 'package:myportfolio/Screens/mobile_layout/mobie_home_page.dart';
import 'package:myportfolio/Screens/mobile_layout/mobile_about_view.dart';
import 'package:myportfolio/Screens/mobile_layout/mobile_contact.dart';
import 'package:myportfolio/Screens/mobile_layout/mobile_footer.dart';
import 'package:myportfolio/Screens/mobile_layout/mobile_services_view.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/utils/web_images.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
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
      appBar: AppBar(
        backgroundColor: WebColors.primaryColor(isDarkMode),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.nights_stay : Icons.wb_sunny,
              color: isDarkMode ? Colors.black : const Color(0xFFEBAD03),
            ),
            onPressed: toggleDarkMode,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: WebColors.backgroundColor(isDarkMode),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: WebColors.primaryColor(isDarkMode),
              ),
              child: Center(
                child: Image.asset(
                  WebImages.logo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: Text(
                    'Home',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: WebColors.textColorBold(isDarkMode),
                    ),
                  ),
                  onTap: () {
                    _scrollToSection(_homeKey);
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: ListTile(
                  leading: const Icon(Icons.info),
                  title: Text(
                    'About',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: WebColors.textColorBold(isDarkMode),
                    ),
                  ),
                  onTap: () {
                    _scrollToSection(_aboutKey);
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.build),
                  title: Text(
                    'Services',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: WebColors.textColorBold(isDarkMode),
                    ),
                  ),
                  onTap: () {
                    _scrollToSection(_servicesKey);
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: ListTile(
                  leading: const Icon(Icons.contact_page),
                  title: Text(
                    'Contact',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: WebColors.textColorBold(isDarkMode),
                    ),
                  ),
                  onTap: () {
                    _scrollToSection(_contactKey);
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const Divider(color: Colors.grey, thickness: 1),
          ],
        ),
      ),
      backgroundColor: WebColors.backgroundColor(isDarkMode),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            MobieHomePage(
              key: _homeKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            MobileAboutView(
              key: _aboutKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            MobileServicesView(
              key: _servicesKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            MobileContact(
              key: _contactKey,
              isDarkMode: isDarkMode,
            ),
            const SizedBox(height: 5),
            MobileFooter(
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
