import 'package:flutter/material.dart';

class marketplace extends StatefulWidget {
  @override
  State<marketplace> createState() => _marketplaceState();
}

class _marketplaceState extends State<marketplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'marketplace page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
