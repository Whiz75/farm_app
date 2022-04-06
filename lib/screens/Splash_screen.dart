import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_apps/screens/Login_Register_screen.dart';
import 'package:lottie/lottie.dart';

class Splash_screen extends StatefulWidget {
  _SplashScreenSate createState() => _SplashScreenSate();
}

class _SplashScreenSate extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    _LoadSplash();
  }

  _LoadSplash() async {
    var _duration = Duration(seconds: 10);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Login_screen()));
  }

  @override
  Widget build(BuildContext context) {
    //height and width
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        height: height,
        width: width,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              LottieBuilder.asset('assets/animations/meditation.json'),
              const Text('LOADING...PLEASE WAIT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
