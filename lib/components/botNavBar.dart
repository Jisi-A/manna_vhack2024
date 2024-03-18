import 'package:flutter/material.dart';
import 'package:manna_vhack2024/pages/account.dart';
import 'package:manna_vhack2024/pages/home.dart';
import 'package:manna_vhack2024/pages/community.dart';
import 'package:manna_vhack2024/pages/ai_assistant.dart';
import 'package:manna_vhack2024/pages/marketplace.dart';

class botNavBar extends StatefulWidget {
  const botNavBar({super.key});

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
                icon: Icon(Icons.groups, size: 30), label: 'Community'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assistant_outlined, size: 30),
                label: 'AI Assistant'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined, size: 30),
                label: 'Marketplace'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined, size: 30),
                label: 'Account'),
          ],
          selectedItemColor: const Color.fromARGB(255, 6, 136, 84),
          elevation: 5.0,
          unselectedItemColor: const Color.fromARGB(255, 3, 81, 50),
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
