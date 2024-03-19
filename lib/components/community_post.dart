import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/community_post_inside.dart';

class CommunityPost extends StatelessWidget {
  final String postImage;
  final String avatarImage;
  final String title;
  final String name;

  const CommunityPost({super.key, 
    this.postImage = 'assets/plant.png',
    this.avatarImage = 'assets/girl.jpeg',
    this.title = 'Got my plant a new pot!',
    this.name = 'Chow Qian Ru',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CommunityPostInside(
                  postImage: postImage,
                  avatarImage: avatarImage,
                  title: title,
                  name: name)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: double
                    .infinity, // Set the width to occupy the entire available space // Set the desired height for the image
                height: 170,
                child: Image.asset(
                  postImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 4, 8),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    height: 1.5, // Adjust the line spacing here
                  ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(avatarImage),
                      radius: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 9,
                      ),
                    ),
                  ), // add this line
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: const Text(
                              '3.6k',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.thumb_up,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
