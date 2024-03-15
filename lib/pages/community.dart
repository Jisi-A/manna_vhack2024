import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class community extends StatefulWidget {
  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: 'Community',
        isIcon: true,
      ),
      body: Center(
        child: Text(
          'community',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
