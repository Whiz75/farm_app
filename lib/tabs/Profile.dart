import 'package:flutter/material.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  State<TabProfile> createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 4.0,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: const <Widget>[
            /*SlimyCard(
              color: Colors.blueAccent,
              width: 250,
              topCardHeight: 400,
              bottomCardHeight: 200,
              borderRadius: 15,
              topCardWidget: const Center(
                child: Text(
                  'PROFILE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              bottomCardWidget: const Image(
                image: AssetImage('assets/images/bored.jpg'),
                fit: BoxFit.contain,
              ),
              slimeEnabled: true,
            ),*/
          ],
        ),
      ),
    );
  }
}
