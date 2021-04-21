import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/app_routes.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final currentIndex;

  CustomBottomNavigationBar({this.currentIndex=0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home,),title: Text('')),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled,),title: Text('')),
      ],
      onTap: (index){
        if(index == 0){
          Navigator.pushNamed(context, AppRoutes.homeScreen);
        }
        if(index == 1){
          Navigator.pushNamed(context, AppRoutes.addMobileScreen);
        }
      },
    );
  }
}
