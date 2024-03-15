import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class marketplace extends StatefulWidget {
  @override
  State<marketplace> createState() => _marketplaceState();
}

class _marketplaceState extends State<marketplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: 'Marketplace',
        isIcon: true,
      ),
      body: Center(
        child: Text(
          'marketplace page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
