import 'package:flutter/material.dart';

class soil_prepare extends StatefulWidget {
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
        title: Align(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                'assets/cabbage_ground.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'There are several methods to prepare soil for planting crops, each with its own benefits and suitability depending on factors like soil type, climate, and the specific needs of the crops being grown.',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'The following are few methods that are commonly used:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
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
                            backgroundColor: selectedMethod == 1 ? Color.fromARGB(255, 213, 252, 236) : Color.fromARGB(255, 230, 249, 241), // Change the color based on the selected method
                          ),
                          child: Text(
                            'METHOD 1',
                            style: TextStyle(
                              fontSize: 12, // Adjust the font size as per your requirement
                              fontWeight: FontWeight.bold, // Make the text bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMethod = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedMethod == 2 ? Color.fromARGB(255, 167, 232, 207) : Color.fromARGB(255, 178, 235, 213), // Change the color based on the selected method
                          ),
                          child: Text(
                            'METHOD 2',
                            style: TextStyle(
                              fontSize: 12, // Adjust the font size as per your requirement
                              fontWeight: FontWeight.bold, // Make the text bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedMethod = 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedMethod == 3 ? Color.fromARGB(255, 134, 219, 209) : Color.fromARGB(255, 141, 226, 192) , // Change the color based on the selected method
                          ),
                          child: Text(
                            'METHOD 3',
                            style: TextStyle(
                              fontSize: 12, // Adjust the font size as per your requirement
                              fontWeight: FontWeight.bold, // Make the text bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  // Method 1 content
                  if (selectedMethod == 1)
                    _buildMethodContent('Step 1: Clean Up The Area          Remove large rocks, stones, building rubble, etc., as you turn the garden soil.', 'Step 2: Apply Compost          Compost improves soil structure, so if you have homemade compost, dig plenty of it into your garden soil. Aim for at least a 30 cm depth of compost, and use a rake to mix it in thoroughly. If you don\'t have enough compost, consider purchasing enriched topsoil from a local supplier as a substitute.', 'Step 3: Add Organic Fertilizer          Sprinkle generous handfuls of organic fertilizer onto the soil, aiming for approximately one handful per square meter.', 'Step 4: Incorporate Bone Meal or Superphosphate                    Sprinkle bone meal or superphosphate onto the soil and work it in, using slightly less than the amount of organic fertilizer you added in the previous step. This substance helps enhance root development.', const Color.fromARGB(255, 230, 249, 241), 'assets/clean_rock.png', 'assets/compost.png', 'assets/fertilizer.png', 'assets/bone_meal.jpg'),
                  // Method 2 content
                  if (selectedMethod == 2)
                    _buildMethodContent('Method 2 Content', 'Method 2 Content', 'Method 2 Content', 'Method 2 Content', Color.fromARGB(255, 178, 235, 213), 'assets/clean_rock.png', 'assets/compost.png', 'assets/fertilizer.png', 'assets/bone_meal.jpg'),
                  // Method 3 content
                  if (selectedMethod == 3)
                    _buildMethodContent('Method 3 Content', 'Method 3 Content', 'Method 3 Content', 'Method 3 Content', Color.fromARGB(255, 141, 226, 192), 'assets/clean_rock.png', 'assets/compost.png', 'assets/fertilizer.png', 'assets/bone_meal.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMethodContent(String text1, String text2, String text3, String text4, Color color, String image1, String image2, String image3, String image4) {
  return Container(
    color: color,
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text1,
                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
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
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(image2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  text2,
                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text3,
                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
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
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(image4),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  text4,
                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                  textAlign: TextAlign.left,
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