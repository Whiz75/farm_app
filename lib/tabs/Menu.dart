import 'package:flutter/material.dart';

class TabMenu extends StatefulWidget {
  const TabMenu({Key? key}) : super(key: key);

  @override
  State<TabMenu> createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.headlineSmall,
        title: const Text("Menu",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
      ),

      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: const [

          ],
        ),
      ),
    );
  }
}
