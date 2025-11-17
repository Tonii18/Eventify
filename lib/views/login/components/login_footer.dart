import 'package:eventify/config/theme.dart';
import 'package:eventify/views/register/register_page.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatefulWidget{
  final double scale;
  final double width;

  const LoginFooter({
    super.key, 
    required this.scale, 
    required this.width
  });
  
  @override
  State<StatefulWidget> createState() => _LoginFooter();
}

class _LoginFooter extends State<LoginFooter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32 * widget.scale),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            width: widget.width * 0.75,
            child: Divider(
              height: 20,
              thickness: 1,
              color: AppColors.darkBlue
            ),
          ),

          Text(
            '¿No tienes cuenta?',
            style: TextStyle(
              color: AppColors.primaryPurple,
              fontSize: widget.scale * 15
            ),
          ),

          TextButton(
            onPressed: (){
              setState(() {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => RegisterPage())
                );
              });
            }, 
            child: Text(
              'Regístrate',
              style: TextStyle(
                color: AppColors.primaryOrange,
                fontSize: 18 * widget.scale,
                fontWeight: FontWeight.w900
              ),
            )
          )
        ],
      ),
    );
  }

}