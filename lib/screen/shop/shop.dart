import 'package:flutter/material.dart';
import 'package:tsel_clone/themes.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Shop Page',
        style: mediumText15,
      )),
    );
  }
}
