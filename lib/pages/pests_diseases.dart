import 'package:flutter/material.dart';

class pests_diseases extends StatefulWidget {
  @override
  State<pests_diseases> createState() => _pests_diseasesState();
}

class _pests_diseasesState extends State<pests_diseases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Align(
          alignment: Alignment.centerLeft, // Align the text to the left
          child: Text('Clay Soil'),
        ),
        centerTitle: false, // Set to false to align the title to the left
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