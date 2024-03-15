import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class ai_assistant extends StatefulWidget {
  @override
  State<ai_assistant> createState() => _ai_assistantState();
}

class _ai_assistantState extends State<ai_assistant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: 'AI Assistant',
        isIcon: true,
      ),
      body: Center(
        child: Text(
          'AI_assistant page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
