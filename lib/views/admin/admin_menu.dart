import 'package:eventify/config/theme.dart';
import 'package:eventify/services/auth_service.dart';
import 'package:eventify/views/admin/components/admin_menu_header.dart';
import 'package:eventify/views/admin/components/view_users_button.dart';
import 'package:eventify/views/login/login_page.dart';
import 'package:flutter/material.dart';

class AdminMenu extends StatefulWidget {
  const AdminMenu({super.key});

  @override
  State<StatefulWidget> createState() => _AdminMenuState();
}

class _AdminMenuState extends State<AdminMenu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scale = size.width / 400;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.greyBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20 * scale),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: (){
                      AuthService authService = AuthService();
                      authService.logout();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    }, 
                    icon: Icon(Icons.logout_outlined)
                  ),
                ],
              ),
              AdminMenuHeader(
                scale: scale, 
                width: size.width, 
                height: size.height,
              ),

              SizedBox(
                height: 20 * scale,
              ),

              ViewUsersButton(
                width: size.width, 
                height: size.height, 
                scale: scale,
              )
            ],
          ),
        ),
      ),
    );
  }
}
