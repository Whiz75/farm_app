import 'package:flutter/material.dart';
import 'package:flutter_apps/screens/Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Splash_screen(),
      debugShowCheckedModeBanner :false,
    );
  }
}


