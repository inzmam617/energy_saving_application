import 'package:energy_saving_application/SignIn_Up_pages/SignIn.dart';
import 'package:flutter/material.dart';

import 'SpashScreen/SplashScreen.dart';
import 'StartingScreens/PageOne.dart';
import 'StartingScreens/PageThree.dart';
import 'StartingScreens/PageTwo.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: const SplashScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        // SignIn(),
        PageOne(),
        PageTwo(),
        PageThree(),

      ],
    );
  }
}

