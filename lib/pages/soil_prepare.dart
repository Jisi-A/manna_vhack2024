import 'package:flutter/material.dart';

class soil_prepare extends StatefulWidget {
  const soil_prepare({super.key});

  @override
  State<soil_prepare> createState() => soil_prepareState();
}

class soil_prepareState extends State<soil_prepare> {
  int selectedMethod = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Soil Preparation Methods',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              fontSize: 25,
              letterSpacing: 1.0,
            ),
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                'assets/cabbage_ground.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'There are several methods to prepare soil for planting crops, each with its own benefits and suitability depending on factors like soil type, climate, and the specific needs of the crops being grown.',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'The following are few methods that are commonly used:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMethod = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedMethod == 1 ? const Color.fromARGB(255, 213, 252, 236) : const Color.fromARGB(255, 230, 249, 241),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'METHOD 1',
                            style: TextStyle(
                              fontSize: 14, // Adjust the font size as per your requirement
                              fontWeight: FontWeight.bold, // Make the text bold
                              color: Color.fromARGB(255, 3, 81, 50),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMethod = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedMethod == 2 ? const Color.fromARGB(255, 167, 232, 207) : const Color.fromARGB(255, 178, 235, 213),
                            shape: const RoundedRectangleBorder(),
                          ),
                          child: const Text(
                            'METHOD 2',
                            style: TextStyle(
                              fontSize: 14, // Adjust the font size as per your requirement
                              fontWeight: FontWeight.bold, // Make the text bold
                              color: Color.fromARGB(255, 3, 81, 50),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMethod = 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedMethod == 3 ? const Color.fromARGB(255, 134, 219, 209) : const Color.fromARGB(255, 141, 226, 192),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'METHOD 3',
                            style: TextStyle(
                              fontSize: 14, // Adjust the font size as per your requirement
                              fontWeight: FontWeight.bold, // Make the text bold
                              color: Color.fromARGB(255, 3, 81, 50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Method 1 content
                  if (selectedMethod == 1)
                    _buildMethodContent('Step 1: Clean Up The Area\n\n', 'Remove large rocks, stones, building rubble, etc., as you turn the garden soil.', 'Step 2: Apply Compost\n\n', 'Compost improves soil structure, so if you have homemade compost, dig plenty of it into your garden soil. Aim for at least a 30 cm depth of compost, and use a rake to mix it in thoroughly. If you don\'t have enough compost, consider purchasing enriched topsoil from a local supplier as a substitute.', 'Step 3: Add Organic Fertilizer\n\n', 'Sprinkle generous handfuls of organic fertilizer onto the soil, aiming for approximately one handful per square meter.', 'Step 4: Incorporate Bone Meal or Superphosphate\n\n', 'Sprinkle bone meal or superphosphate onto the soil and work it in, using slightly less than the amount of organic fertilizer you added in the previous step. This substance helps enhance root development.', const Color.fromARGB(255, 230, 249, 241), 'assets/clean_rock.png', 'assets/compost.png', 'assets/fertilizer.png', 'assets/bone_meal.jpg'),
                  // Method 2 content
                  if (selectedMethod == 2)
                    _buildMethodContent('Step 1: Soil Testing\n\n', 'Test soil pH and nutrient levels.', 'Step 2: Amend Soil\n\n', 'Adjust pH and replenish nutrients based on test results.', 'Step 3: Mulching\n\n', 'Apply organic mulch to conserve moisture and improve soil structure.', 'Step 4: Cover Cropping\n\n', 'Plant cover crops to add organic matter and enhance soil fertility.', const Color.fromARGB(255, 178, 235, 213), 'assets/soil_testing.jpeg', 'assets/adjust_ph.jpg', 'assets/mulching.jpg', 'assets/cover_cropping.jpg'),
                  // Method 3 content
                  if (selectedMethod == 3)
                    _buildMethodContent('Step 1: Clean Up The Area\n\n', 'Remove large rocks, stones, building rubble, etc., as you turn the garden soil.', 'Step 2: Apply Compost\n\n', 'Compost improves soil structure, so if you have homemade compost, dig plenty of it into your garden soil. Aim for at least a 30 cm depth of compost, and use a rake to mix it in thoroughly. If you don\'t have enough compost, consider purchasing enriched topsoil from a local supplier as a substitute.', 'Step 3: Add Organic Fertilizer\n\n', 'Sprinkle generous handfuls of organic fertilizer onto the soil, aiming for approximately one handful per square meter.', 'Step 4: Incorporate Bone Meal or Superphosphate\n\n', 'Sprinkle bone meal or superphosphate onto the soil and work it in, using slightly less than the amount of organic fertilizer you added in the previous step. This substance helps enhance root development.', const Color.fromARGB(255, 141, 226, 192), 'assets/clean_rock.png', 'assets/compost.png', 'assets/fertilizer.png', 'assets/bone_meal.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMethodContent(
    String title1,
    String content1,
    String title2,
    String content2,
    String title3,
    String content3,
    String title4,
    String content4,
    Color color,
    String image1,
    String image2,
    String image3,
    String image4,
  ) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title1,
                          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: content1,
                          style: const TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(image1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(image2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title2,
                          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: content2,
                          style: const TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title3,
                          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: content3,
                          style: const TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(image3),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(image4),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title4,
                          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: content4,
                          style: const TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}