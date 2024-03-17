import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class pest_management extends StatefulWidget {
  @override
  State<pest_management> createState() => _pest_managementState();
}

class _pest_managementState extends State<pest_management> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: 'Pest Management',
        isIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 200.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('assets/pest_monitor.jpg'), // Replace 'assets/pest_monitoring_image.jpg' with your image asset path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  color: const Color.fromARGB(255, 27, 151, 83).withOpacity(0.7),
                                  child: Text(
                                    'Pest Monitoring',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('assets/pests_diseases.jpg'), // Replace 'assets/pest_monitoring_image.jpg' with your image asset path
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  color: const Color.fromARGB(255, 27, 151, 83).withOpacity(0.7),
                                  child: Text(
                                    'Pests & Diseases',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200.0,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 - 30, // Adjust the width accordingly
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                            image: AssetImage('assets/camera.jpg'), // Replace 'assets/pest_monitoring_image.jpg' with your image asset path
                            fit: BoxFit.cover,
                          ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            color: const Color.fromARGB(255, 27, 151, 83).withOpacity(0.7),
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
