import 'package:flutter/material.dart';

class camera_health_condition extends StatefulWidget {
  const camera_health_condition({super.key});

  @override
  State<camera_health_condition> createState() => _camera_health_conditionState();
}

class _camera_health_conditionState extends State<camera_health_condition> {
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
                shape: BoxShape.circle, // Make it a circle
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: Stack(
                children: [
                  // No need for horizontal line
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: AnimatedContainer(
              duration: Duration(seconds: 1), // Duration of animation
              height: MediaQuery.of(context).size.height * 0.5, // Adjust height
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.transparent], // Gradient colors
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pest : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'No signs of insects detected, indicating excellent plant care.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Health Condition : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/pests_diseases_damping_off');
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Given your crop\'s growth and circumstances, it may be susceptible to ',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'DAMPING-OFF',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' disease.\n(Press the text of \"Health Condition\" to learn more about this disease.)',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Hydration Condition : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'It has been 14 hours since the last watering, and your crop is showing slight signs of dehydration.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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