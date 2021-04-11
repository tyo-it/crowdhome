import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "E-mail",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Identitas",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Data Investor",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "NPWP",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          // ProfileMenu(
          //   text: "Log Out",
          //   icon: "assets/icons/Log out.svg",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
