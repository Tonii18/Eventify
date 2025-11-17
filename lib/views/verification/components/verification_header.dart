import 'package:eventify/config/theme.dart';
import 'package:flutter/material.dart';

class VerificationHeader extends StatelessWidget {
  final double scale;
  const VerificationHeader({super.key, required this.scale});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Verifica tu',
            style: TextStyle(
              fontSize: 35 * scale,
              fontWeight: FontWeight.w900,
              color: AppColors.primaryPurple
            ),
          ),

          Text(
            'Email',
            style: TextStyle(
              fontSize: 35 * scale,
              fontWeight: FontWeight.w900,
              color: AppColors.primaryOrange
            ),
          ),

          SizedBox(
            height: 120 * scale,
          ),

          Image.asset(
            'lib/assets/images/verify_email.png',
            width: 280 * scale,
            height: 340 * scale,
          ),

          SizedBox(height: 10 * scale),

          Text(
            'Se te ha enviado un correo de verificación. \nVerifica tu correo y espera a que el Administrador te active',
            style: TextStyle(
              fontSize: 20 * scale,
              fontWeight: FontWeight.w100,
              color: AppColors.darkBlue
            ),
          ),

          SizedBox(height: 10 * scale),
        ],
      ),
    );
  }

}