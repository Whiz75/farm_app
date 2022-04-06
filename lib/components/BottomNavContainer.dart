import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import '../tabs/Home.dart';
import '../tabs/Menu.dart';
import '../tabs/Profile.dart';

class Containter extends StatefulWidget {
  const Containter({Key? key}) : super(key: key);

  @override
  _ContainterState createState() => _ContainterState();
}

class _ContainterState extends State<Containter> {

  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: _getCurrentPage(currentPage),
        ),
      ),

      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home,
              title: "Home",
            onclick: (){}
          ),TabData(iconData: Icons.person,
            title: "Profile",
            onclick: (){}
          ),
          TabData(iconData: Icons.menu_book,
              title: "Menu",
            onclick: (){}
          ),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getCurrentPage(int page){
    switch(page){
      case 0:
        return const MaterialApp(
          title: "Home",
          home: TabHome(),
          debugShowCheckedModeBanner: false,
        );

      case 1:
        return const MaterialApp(
          title: "Profile",
          home: TabProfile(),
          debugShowCheckedModeBanner: false,
        );

      default:
        return const MaterialApp(
          title: "Menu",
          home: TabMenu(),
          debugShowCheckedModeBanner: false,
        );

    }
  }
}
