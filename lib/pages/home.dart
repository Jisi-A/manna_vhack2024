import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
        child: Stack(
          children: [
            Positioned(
              top: 20.0,
              left: 20.0,
              right: 20.0,
              bottom: MediaQuery.of(context).size.height * 0.24,
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 4.0, 20.0, 20.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 172, 232, 181), // Changed the color
                  borderRadius: BorderRadius.circular(20.0), // Added border radius
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Type of Soils',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255), // Changed the color
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120.0,
                                      child: Image.asset(
                                        'assets/ClaySoil.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            'CLAY',
                                            style: TextStyle(
                                              color: Colors.white, // Changed text color to white
                                              fontWeight: FontWeight.bold, // Made text bold
                                              fontSize: 22.0, // Adjusted font size
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120.0,
                                      child: Image.asset(
                                        'assets/LoamSoil.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            'LOAM',
                                            style: TextStyle(
                                              color: Colors.white, // Changed text color to white
                                              fontWeight: FontWeight.bold, // Made text bold
                                              fontSize: 22.0, // Adjusted font size
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120.0,
                                      child: Image.asset(
                                        'assets/SandSoil.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            'SAND',
                                            style: TextStyle(
                                              color: Colors.white, // Changed text color to white
                                              fontWeight: FontWeight.bold, // Made text bold
                                              fontSize: 22.0, // Adjusted font size
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120.0,
                                      child: Image.asset(
                                        'assets/SiltSoil.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            'SILT',
                                            style: TextStyle(
                                              color: Colors.white, // Changed text color to white
                                              fontWeight: FontWeight.bold, // Made text bold
                                              fontSize: 22.0, // Adjusted font size
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            height: 40.0,
                            padding: EdgeInsets.only(bottom: 8.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 20, 123, 35), // Changed the color
                              borderRadius: BorderRadius.circular(20.0), // Added border radius
                            ),
                            child: Center(
                              child: Text(
                                'OTHERS',
                                style: TextStyle(
                                  color: Colors.white, // Changed text color to white
                                  fontWeight: FontWeight.bold, // Made text bold
                                  fontSize: 22.0, // Adjusted font size
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.20, // Position the grey line just above the second positioned container
              left: 20.0,
              right: 20.0,
              child: Container(
                height: 1.0, // Height of the grey line
                color: const Color.fromARGB(255, 236,237,239), // Color of the grey line
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 0,
              right: 0,
              child: Container( // Container C3
                padding: EdgeInsets.symmetric(horizontal: 20.0), // Horizontal padding for C3
                height: MediaQuery.of(context).size.height * 0.15, // Height of C3
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.125, // Width of left container in C3
                      height: 120.0,
                      child: Image.asset(
                        'assets/Lightbulb.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How to Prepare Soil for Planting?', // Text for top part of C3
                            style: TextStyle(fontSize: 19.0),
                          ),
                          SizedBox(height: 1.0), // Add space between "Up" and "Down" texts
                          Text(
                            'Loosen soil, amend with compost, and remove debris.', // Text for bottom part of C3
                            style: TextStyle(fontSize: 12.0, color: Colors.grey), // Text style for "Down" text
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center, // Align the container to the center horizontally
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 7, 175, 107), // Color of curved container
                                  borderRadius: BorderRadius.circular(20.0), // Border radius of curved container
                                ),
                                child: Text(
                                  'LEARN MORE', // Updated text to 'LEARN MORE'
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19.0), // Bold and bigger font size
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
