import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class prof_Detail extends StatelessWidget {
  const prof_Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage("assets/avatar.png"),
                      radius: 70,
                    ),
                    Text("Rosemary Mullen",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text("Member since 2021"),
                    Text("3.1k followers"),
                  ],
                ),
              ),
              SizedBox(height: 5, child: Container(color: Colors.grey[100])),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Information",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                        "Hello! My name is Rosemary Mullen, and I bring 5 years of experience working in the field of agriculture. Throughout my career, I’ve achieved significant milestones including implementing precision irrigation techniques. I’m excited to offer my expertise in pest control. Whether it’s crop management, sustainable practices, or agribusiness, I’m here to provide top-notch services tailored to your needs"),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("From"),
                                Text(
                                  "Georgetown, Pulau Pinang",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Last active"),
                                Text("11h ago",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 5, child: Container(color: Colors.grey[100])),
                    Text("Languages"),
                    SizedBox(height: 5),
                    Text(
                      "• English, Bahasa Melayu, Tamil, Chinese",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height: 5, child: Container(color: Colors.grey[100])),
                    Text("Skills"),
                    SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Crop Management",
                              style: TextStyle(
                                color:
                                    Colors.black, // Set the font color to black
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color.fromARGB(
                                  255,
                                  178,
                                  235,
                                  213), // Set the background color to green
                              // Set the font color to black
                              side: null, // Remove the border
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Pest Control",
                              style: TextStyle(
                                color:
                                    Colors.black, // Set the font color to black
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color.fromARGB(
                                  255,
                                  178,
                                  235,
                                  213), // Set the background color to green
                              // Set the font color to black
                              side: null, // Remove the border
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Decoration",
                              style: TextStyle(
                                color:
                                    Colors.black, // Set the font color to black
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color.fromARGB(
                                  255,
                                  178,
                                  235,
                                  213), // Set the background color to green
                              // Set the font color to black
                              side: null, // Remove the border
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 5, child: Container(color: Colors.grey[100])),
                    Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Image(image: AssetImage("assets/star.png"))),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image(image: AssetImage("assets/star.png"))),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image(image: AssetImage("assets/star.png"))),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image(image: AssetImage("assets/star.png"))),
                        Container(
                            height: 30,
                            width: 30,
                            child:
                                Image(image: AssetImage("assets/star_2.png"))),
                        Text(
                          '4.8 Stars',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Seller communication level\nRecommend to a friend\nOverall experience",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star),
                                Text("4.9"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star),
                                Text("4.9"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star),
                                Text("4.9"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 5, child: Container(color: Colors.grey[100])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "17 Reviews",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("See all"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/avatar.png"),
                            radius: 30,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Christopher Mendoza",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 30),
                                      Icon(Icons.star),
                                      Text("4.9"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "Rose is very knowledgeable when it comes to \npest control, I have always had problems with \nworms in my cucumbers but the problems are \nsolved thanks to her!")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 20, child: Container(color: Colors.grey[100])),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 48, 91,
                                  187), // Set the button background color to blue
                              minimumSize: Size(double.infinity, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // No rounded corners
                              ), // Make the button as wide as possible
                            ),
                            child: Text(
                              "Book (RM25)",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors
                                      .white), // Set the font color to white
                            ),
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
    );
  }
}
