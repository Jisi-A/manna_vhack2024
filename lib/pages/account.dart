import 'package:flutter/material.dart';

class account extends StatefulWidget {
  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'account page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
