// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tsel_clone/screen/explore/explor.dart';
import 'package:tsel_clone/screen/home/home.dart';
import 'package:tsel_clone/screen/menu/menu.dart';
import 'package:tsel_clone/screen/poin/point.dart';
import 'package:tsel_clone/screen/shop/shop.dart';
import 'package:tsel_clone/themes.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<Widget> _screens = [
    HomePage(),
    PoinPage(),
    ShopPage(),
    ExplorePage(),
    MenuPage(),
  ];
  int _currentIndex = 0;

  final Map<String, dynamic> _bottomNavItems = {
    'home': Icons.home,
    'POIN': Icons.podcasts_sharp,
    'Shop': Icons.shopping_cart,
    'Explorer': Icons.list,
    'Menu': Icons.rocket_launch_outlined,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          // showUnselectedLabels: true,
          // selectedLabelStyle: const TextStyle(
          //     color: Colors.blueAccent, fontWeight: FontWeight.bold),
          // unselectedLabelStyle: const TextStyle(
          //   color: Colors.grey,
          //   fontWeight: FontWeight.normal,
          // ),
          selectedItemColor: redColor,
          unselectedItemColor: greyColor,
          items: _bottomNavItems
              .map((key, value) => MapEntry(
                    key,
                    BottomNavigationBarItem(
                      label: key,
                      icon: Icon(value as IconData),
                    ),
                  ))
              .values
              .toList(),
        ));
  }
}


// class BottonNavBar extends StatefulWidget {
//   const BottonNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottonNavBar> createState() => _BottonNavBarState();
// }

// class _BottonNavBarState extends State<BottonNavBar> {
//   int _selectdIndex = 0;
//   final _screens = [
//     HomePage(),
//     PoinPage(),
//     ShopPage(),
//     ExplorePage(),
//     MenuPage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     Widget customNavBar() {
//       return BottomNavigationBar(
//         currentIndex: _selectdIndex,
//         onTap: (i) => setState(() => _selectdIndex = i),
//         type: BottomNavigationBarType.fixed,
//         selectedLabelStyle: bottonNavText,
//         unselectedLabelStyle: bottonNavText,
//         items: const <BottomNavigationBarItem>[
//           //==================================================================
//           // BottomNavigationBarItem(
//           //   icon: Container(
//           // margin: EdgeInsets.syestematic(vertical:5),
//           //     child: Image.asset(
//           //       'assets/icons/home.png',
//           //       width: 18,
//           //     ),
//           //   ),
//           //   label: 'Home',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Container(
//           // margin: EdgeInsets.syestematic(vertical:5),
//           //     child: Image.asset(
//           //       'assets/icons/campion.png',
//           //       width: 25,
//           //     ),
//           //   ),
//           //   label: 'POIN',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Container(
//           // margin: EdgeInsets.syestematic(vertical:5),
//           //     child: Image.asset(
//           //       'assets/icons/belanja.png',
//           //       width: 20,
//           //     ),
//           //   ),
//           //   label: 'Belanja',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Container(
//           // margin: EdgeInsets.syestematic(vertical:5),
//           //     child: Image.asset(
//           //       'assets/icons/roket.png',
//           //       width: 25,
//           //     ),
//           //   ),
//           //   label: 'Jelajah',
//           // ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//             ),
//             label: 'Home',
//             // color: Colors.grey,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.podcasts_sharp,
//             ),
//             label: 'POIN',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.shopping_cart,
//             ),
//             label: 'Shop',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.rocket_launch_outlined,
//             ),
//             label: 'Explorer',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.list,
//             ),
//             label: 'Menu',
//             // color: Colors.grey,
//           ),
//         ],
//         selectedItemColor: redColor,
//         unselectedItemColor: greyColor,
//       );
//     }

//     return Scaffold(
//       bottomNavigationBar: customNavBar(),
//       body: Stack(
//         children: _screens
//             .asMap()
//             .map((i, screen) => MapEntry(
//                 i,
//                 Offstage(
//                   offstage: _selectdIndex != i,
//                   child: screen,
//                 )))
//             .values
//             .toList(),
//       ),
//     );
//   }
// }
