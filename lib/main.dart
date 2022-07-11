import 'package:flutter/material.dart';
import 'package:tsel_clone/themes.dart';
import 'botton_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telkomsel App Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: redColor,
        ),
      ),
      // home: BottonNavBar(),
      home: BottomNavScreen(),
    );
  }
}
