import 'package:flutter/material.dart';

class community extends StatefulWidget {
  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'community',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
