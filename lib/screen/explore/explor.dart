import 'package:flutter/material.dart';
import 'package:tsel_clone/themes.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Explore Page',
        style: mediumText15,
      )),
    );
  }
}
