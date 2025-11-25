import 'package:flutter/material.dart';

class BasePage extends StatelessWidget{
  final Widget child;
  final double topMargin;

  const BasePage({super.key,required this.topMargin, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: topMargin),
        child: child,
      )
    );
  }
}