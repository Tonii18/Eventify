import 'package:eventify/config/measures.dart';
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
    return Scaffold(
      body: BasePage(
        topMargin: Measures.marginTop, 
        child: SingleChildScrollView(
          
        )
      ),
    );
  }

}