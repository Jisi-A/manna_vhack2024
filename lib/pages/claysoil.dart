import 'package:flutter/material.dart';

class claysoil extends StatefulWidget {
  const claysoil({super.key});

  @override
  State<claysoil> createState() => _claysoilState();
}

class _claysoilState extends State<claysoil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Align(
          alignment: Alignment.centerLeft, // Align the text to the left
          child: Text('Clay Soil'),
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Child 1: Stack containing C1 and C2
            Positioned.fill(
              child: Stack(
                children: [
                  // Container C1
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image.asset(
                      'assets/clay_bg.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Container C2
                  Positioned(
                    top: MediaQuery.of(context).size.height / 5, // Adjust the top position to overlap C1 vertically
                    left: MediaQuery.of(context).size.width / 2 - 75, // Center C2 horizontally
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), // Adjust border radius for the border
                        border: Border.all(
                          color: const Color.fromARGB(255, 178, 235, 213), // Adjust border color
                          width: 3.0, // Adjust border width
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0), // Adjust border radius
                        child: Image.asset(
                          'assets/ClaySoil.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Child 2: Other contents
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3 + 75), // Position below C1 and C2
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'What is Clay?',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Clay particles are very small and close together. Clay is dense and sticky. It holds water very well but it’s also very dense. When clay dries out, it becomes hard and difficult to till. Many plants struggle in clay because of its poor drainage and dense nature that make it difficult for roots to break through the soil.',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center, // Center the text horizontally
                        ),
                        const SizedBox(height: 20.0),
                        const Text(
                          'Suitable Crops for Clay Soil',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        // Images for suitable crops
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              // Replace these with your images
                              _buildImage('assets/broccoli.jpg'),
                              const SizedBox(width: 10),
                              _buildImage('assets/brussles_sprout.jpg'),
                              const SizedBox(width: 10),
                              _buildImage('assets/cabbage_nappa.jpg'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        imagePath,
        width: 160, // Adjust the width of the image
        height: 120, // Adjust the height of the image
        fit: BoxFit.cover,
      ),
    );
  }
}
