import 'package:flutter/material.dart';

class news extends StatelessWidget {


  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tomato Blight Disease Strikes Penang', 
            style: const TextStyle(
              fontSize: 24
            ),
          ),
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
                            'assets/tomato_disease.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Breaking News: Tomato Blight Disease Strikes Penang',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'RobotoBlack',
                          fontWeight: FontWeight.w700,
                          height: 1.2
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black, // default text color
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Penang, [12/3/2024] - ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'A severe outbreak of early blight disease has been reported in tomato crops across Penang, raising concerns among local farmers and suppliers. The disease, characterized by dark spots on leaves and stems, poses a significant threat to the yield and quality of the affected crops.\n\nAgricultural experts are being summoned to assess the extent of the damage and devise immediate countermeasures. The local government is also stepping in to provide support and resources to contain the spread of the disease.\n\nConsumers are advised to expect a temporary shortage in supply and potential price hikes for tomatoes and related products until the situation is under control.',
                            ),
                          ],
                        ),
                      )
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
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/avatar_comment.jpeg'),
                          radius: 25,
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
                                      fontSize: 16,
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
                                        'So scary!',
                                        style: TextStyle(fontSize: 18),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: const Divider(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar.png'),
                          radius: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Leave a comment',
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ), // Decreased the font size to 12
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
        ));
  }
}
