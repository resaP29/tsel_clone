import 'package:flutter/material.dart';
import 'package:tsel_clone/themes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Menu Page',
        style: mediumText15,
      )),
    );
  }
}
