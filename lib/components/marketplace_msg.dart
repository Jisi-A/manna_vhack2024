import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/marketplace_msg_inside.dart';

class MarketplaceMsg extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  MarketplaceMsg({
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
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Set the border color here
                  width: 2.0, // Set the border width here
                ),
              ),
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MarketplaceMsgIns()), // Replace NewPage with the class of your new page
                  );
                },
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
                                'Seller', // Replace with your text
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.chat),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ));
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
