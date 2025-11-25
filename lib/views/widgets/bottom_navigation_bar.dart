import 'package:eventify/config/theme.dart';
import 'package:flutter/material.dart';

class CustomeBottomNavigationBar extends StatefulWidget {
  const CustomeBottomNavigationBar({super.key});
  
  @override
  State<StatefulWidget> createState() => __CustomeBottomNavigationBar();
}

class __CustomeBottomNavigationBar extends State<CustomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final scale = size.width / 400;

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Eventos',
        ),
      ],
      iconSize: 40 * scale,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primaryPurple,
      unselectedItemColor: AppColors.lightGrey,
    );
  }

}