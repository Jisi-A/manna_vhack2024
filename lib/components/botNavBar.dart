import 'package:flutter/material.dart';
import 'package:manna_vhack2024/pages/account.dart';
import 'package:manna_vhack2024/pages/home.dart';
import 'package:manna_vhack2024/pages/community.dart';
import 'package:manna_vhack2024/pages/ai_assistant.dart';
import 'package:manna_vhack2024/pages/marketplace.dart';

class botNavBar extends StatefulWidget {
  @override
  _botNavBarState createState() => _botNavBarState();
}

class _botNavBarState extends State<botNavBar> {
  int selectedPage = 0;
  final List<Widget> _pageOptions = [
    home(),
    community(),
    ai_assistant(),
    marketplace(),
    account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail, size: 30), label: 'Community'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, size: 30),
                label: 'AI Assistant'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, size: 30),
                label: 'Marketplace'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, size: 30), label: 'Account'),
          ],
          selectedItemColor: Colors.green,
          elevation: 5.0,
          unselectedItemColor: Colors.green[900],
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}
