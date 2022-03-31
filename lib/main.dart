import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../app/constants/values.dart';
import '../app/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio - Carlos Espejel',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(
                color: bodyTextColor,
              ),
              bodyText2: const TextStyle(
                color: bodyTextColor,
              ),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
