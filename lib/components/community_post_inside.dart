import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityPostInside extends StatelessWidget {
  final String postImage;
  final String avatarImage;
  final String title;
  final String name;

  CommunityPostInside({
    this.postImage = 'assets/plant.png',
    this.avatarImage = 'assets/girl.jpeg',
    this.title = 'Got my plant a new pot!',
    this.name = 'Ru Qian Chow',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('$avatarImage'),
              ),
              SizedBox(width: 10),
              Text('$name'),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 20, 50, 103),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: const Color.fromARGB(255, 20, 50, 103),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 300, // Set the desired height here
                        child: Container(
                          color: Colors.grey[300],
                          child: Image.asset(
                            '$postImage',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '$title',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
