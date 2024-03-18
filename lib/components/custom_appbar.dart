import 'package:flutter/material.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({super.key, required this.title, required this.isIcon});

  final String title;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isIcon
          ? Image.asset(
              'assets/Original_Logo_no_bg.png',
              fit: BoxFit.contain,
            )
          : BackButton(
              color: Colors.black,
            ),
      title: Text(title),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w700,
        fontSize: 30,
        letterSpacing: 1.0,
      ),
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
