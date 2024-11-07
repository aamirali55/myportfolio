import 'package:flutter/material.dart';
import 'package:myportfolio/Screens/deskto_layout/desktop_view.dart';
import 'package:myportfolio/Screens/mobile_layout/mobile_view.dart';
import 'package:myportfolio/Screens/tablet_layout/tablet_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 1024) {
             
              return const  DesktopView();
            } else if (constraints.maxWidth >= 768) {
            
              return const TabletView();
            } else {
              
              return const MobileView();
            }
          },
        ),
      ),
    );
  }
}
