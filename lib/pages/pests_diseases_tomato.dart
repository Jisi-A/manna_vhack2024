import 'package:flutter/material.dart';

class pests_diseases_tomato extends StatefulWidget {
  @override
  State<pests_diseases_tomato> createState() => _pests_diseases_tomatoState();
}

class _pests_diseases_tomatoState extends State<pests_diseases_tomato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text('Tomato'),
        ),
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          letterSpacing: 1.0,
        ),
        elevation: 0,
      ),
    );
  }
}