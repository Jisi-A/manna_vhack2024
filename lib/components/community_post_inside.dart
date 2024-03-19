import 'package:flutter/material.dart';

class CommunityPostInside extends StatelessWidget {
  final String postImage;
  final String avatarImage;
  final String title;
  final String name;

  const CommunityPostInside({super.key, 
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
                backgroundImage: AssetImage(avatarImage),
              ),
              const SizedBox(width: 5),
              Text(name, style: const TextStyle(fontSize: 15)),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 20, 50, 103),
                    width: 2.0,
                  ),
                ),
                child: const Text(
                  "Follow",
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 50, 103),
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
                            postImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '$title',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Last weekend, I went to find a new pot for my beloved fern. The journey led me to a quaint little garden store in the heart of the city, known for its unique collection of gardening supplies. The pot was not only aesthetically pleasing but also practical. Its size was perfect for my fern, providing ample space for the roots to grow. The pot also had a drainage hole at the bottom, a crucial feature to prevent waterlogging and root rot. I chose this pot because it met all my requirements - it was functional, beautiful, and reasonably priced. The satisfaction I felt was immense. Not only had I found a pot that catered to my plant’s needs, but I had also added a touch of beauty to my living space!',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '35 Comments',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18, // Set the desired font size here
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Add your hyperlink logic here
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/avatar_comment.jpeg'),
                          radius: 35,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    'Jonas Brothers',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Looking good!',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), // add this line
                      Container(
                        child: Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: const Text(
                                    '12',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.thumb_up,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.png'),
                        radius: 35,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Leave a comment',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ), // Decreased the font size to 12
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: const Text(
                                '3.6k',
                                style: TextStyle(
                                  fontSize: 15,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
