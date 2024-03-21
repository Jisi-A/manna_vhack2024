import 'package:flutter/material.dart';

class camera extends StatefulWidget {
  const camera({super.key});

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Align(
          alignment: Alignment.centerLeft, // Align the text to the left
          child: Text('Camera'),
        ),
        centerTitle: false, // Set to false to align the title to the left
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          letterSpacing: 1.0,
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/scan_damping_off.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: kToolbarHeight + 20, // Adjust this value as needed
            left: MediaQuery.of(context).size.width * 0.1, // Adjust the left position
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Add functionality for gallery icon button
                      },
                      icon: Icon(Icons.photo_library, color: Colors.white),
                      iconSize: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/camera_health_condition');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        'SCAN',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}