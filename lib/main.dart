import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TAppBar(
          title: 'Custom',
          isIcon: true,
        ),
      )
    );
  }
}
