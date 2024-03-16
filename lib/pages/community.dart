import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';
import 'package:manna_vhack2024/components/community_post.dart';

class community extends StatefulWidget {
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
                      radius: 35, // Decreased the radius to make it smaller
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
                  children: [
                    CommunityPost(),
                    CommunityPost(),
                    CommunityPost(),
                    CommunityPost(),
                    CommunityPost(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
