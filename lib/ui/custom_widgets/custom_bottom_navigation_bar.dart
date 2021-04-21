import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/app_routes.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final currentIndex;

  CustomBottomNavigationBar({this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add_circled,
            ),
            title: Text('Add')),
      ],
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
        }
        if (index == 1) {
          Navigator.pushReplacementNamed(context, AppRoutes.addMobileScreen);
        }
      },
    );
  }
}
