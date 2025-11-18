import 'package:eventify/config/theme.dart';
import 'package:eventify/views/admin/components/user_list_header.dart';
import 'package:eventify/views/admin/components/users_list.dart';
import 'package:flutter/material.dart';

class AdminUserManagment extends StatefulWidget {
  const AdminUserManagment({super.key});

  @override
  State<StatefulWidget> createState() => _AdminUserManagment();
}

class _AdminUserManagment extends State<AdminUserManagment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scale = size.width / 400;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.greyBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            UserManagmentHeader(
              scale: scale
            ),

            Flexible(
              child: ViewUsersTable(
                scale: scale, 
              ),
            ),

          ],
        ),
      ),
    );
  }
}
