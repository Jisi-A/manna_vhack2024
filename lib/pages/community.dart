// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';
import 'package:manna_vhack2024/components/community_post.dart';

class community extends StatefulWidget {
  const community({super.key});

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: 'Community',
          isIcon: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25, // Decreased the radius to make it smaller
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Share your thoughts...',
                          labelStyle: TextStyle(
                              fontSize: 12), // Decreased the font size to 12
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo,
                        size: 30, // Increased the size of the icon to 30
                      ),
                    )
                  ],
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  children: const [
                    CommunityPost(),
                    CommunityPost(
                      postImage: 'assets/tomato.jpg',
                      name: "Chow Qian Qian",
                      title: "My tomato plant is growing well!",
                      avatarImage: "assets/avatar4.jpeg",
                    ),
                    CommunityPost(
                        name: 'Alex',
                        title:
                            "This is why you shouldn't put your coffee ground",
                        postImage: 'assets/coffee_ground.jpeg',
                        avatarImage: 'assets/avatar2.jpg'),
                    CommunityPost(
                        name: 'Ang Chin Zhen',
                        title: 'Cucumber flaccid :( ',
                        postImage: 'assets/rot_cucumber.jpg',
                        avatarImage: 'assets/avatar3.jpg'),
                    CommunityPost(
                      name: "Lai Yicheng",
                      title: "The topiary garden in midsummer 2023",
                      postImage: "assets/garden.jpeg",
                      avatarImage: "assets/avatar_yc.jpeg",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
