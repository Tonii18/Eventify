import 'package:eventify/config/measures.dart';
import 'package:eventify/config/theme.dart';
import 'package:eventify/views/users/components/speed_dial_fab.dart';
import 'package:eventify/views/widgets/base_page.dart';
import 'package:flutter/material.dart';

class UserEvents extends StatefulWidget {
  const UserEvents({super.key});
  
  @override
  State<StatefulWidget> createState() => _UserEvents();
}

class _UserEvents extends State<UserEvents> {
  @override
  Widget build(BuildContext context) {

    // DONT DELETE

    final size = MediaQuery.of(context).size;
    final scale = size.width / 400;

    return Scaffold(

      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.greyBackground,

      body: BasePage(
        topMargin: Measures.marginTop, 
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                
              ],
            ),
          ),
        )
      ),

      floatingActionButton: SpeedDialFab(),
    );
  }

}