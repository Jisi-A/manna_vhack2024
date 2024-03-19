import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/marketplace_msg_inside.dart';

class MarketplaceMsgIns extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  MarketplaceMsgIns({
    this.postImage = 'assets/girl.jpeg',
    this.title = 'Seller: Chow Qian Ru',
    this.price = '\$90.00',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Scaffold(
            appBar: AppBar(),
            body: Container(
              margin: const EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(50), // Adjust as needed
                        child: Image.network(
                          'https://pbs.twimg.com/profile_images/994592419705274369/RLplF55e_400x400.jpg', // Replace with your image url
                          width: 100, // Adjust as needed
                          height: 100, // Adjust as needed
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10), // Add some spacing
                      Expanded(
                        child: Row(
                          // Change from Column to Row
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '''Hi, do you like my product? 
Is there anything you 
want to comment?''', // Replace with your text
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
                child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ask me anything...\n\n0/4000',
                      labelStyle: TextStyle(
                        fontSize: 12,
                      ), // Decreased the font size to 12
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Handle the send button press
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ))));
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
