import 'package:eventify/config/theme.dart';
import 'package:eventify/views/users/components/home_header.dart';
import 'package:eventify/views/widgets/base_page.dart';
import 'package:eventify/views/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget{
  const UserHome({super.key});
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final scale = size.width / 400;

    return Scaffold(

      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.greyBackground,

      body: BasePage( 
        topMargin: 30,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeHeader(scale: scale, height: size.height, width: size.width),
          
                SizedBox(
                  height: 60 * scale,
                ),
          
                Image.asset(
                  'lib/assets/images/maintenance.png',
                  width: 331 * scale,
                  height: 215 * scale,
                ),
          
                SizedBox(
                  height: 60 * scale,
                ),
          
                Text(
                  'This app is in maintenance mood',
                  style: TextStyle(
                    fontSize: 20 * scale,
                    fontWeight: FontWeight.w100
                  ),
                )
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomeBottomNavigationBar(),
      
    );
  }

}