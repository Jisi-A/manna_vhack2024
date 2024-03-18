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
          alignment: Alignment.centerLeft,
          child: Text('Pests & Diseases'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Searching relevant info for...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Different crops may face different pests problems and diseases.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/potato.jpg', 'POTATO'),
                _buildCircleAvatarWithText('assets/banana.jpg', 'BANANA'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/tomato.jpeg', 'TOMATO'),
                _buildCircleAvatarWithText('assets/bean.jpg', 'BEAN'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/orange.jpg', 'ORANGE'),
                _buildCircleAvatarWithText('assets/wheat.jpg', 'WHEAT'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/apple.jpg', 'APPLE'),
                _buildCircleAvatarWithText('assets/pineapple.png', 'PINEAPPLE'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/cabbage.png', 'CABBAGE'),
                _buildCircleAvatarWithText('assets/corn.jpg', 'CORN'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/lime.jpg', 'LIME'),
                _buildCircleAvatarWithText('assets/grape.jpg', 'GRAPE'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatarWithText('assets/papaya.jpg', 'PAPAYA'),
                _buildCircleAvatarWithText('assets/mango.jpg', 'MANGO'),
              ],
            ),
            // Add more rows as needed
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatarWithText(String imageCrop, String text) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromARGB(255, 230, 249, 241),
              width: 10,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageCrop),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
