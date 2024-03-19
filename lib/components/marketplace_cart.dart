import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MarketplaceCart extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  MarketplaceCart({
    this.postImage = 'assets/plant.png',
    this.title = 'Product',
    this.price = '\$90.00',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(), // Empty container to take up space on the left
                Row(
                  // Wrap the IconButtons in a Row
                  children: [
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {
                        // Add your onPressed function here
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.forum),
                      onPressed: () {
                        // Add your onPressed function here
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          body: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Set the border color here
                  width: 2.0, // Set the border width here
                ),
              ),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/plant.png', // Replace with your image url
                        width: 100, // Adjust as needed
                        height: 100, // Adjust as needed
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10), // Add some spacing
                      Expanded(
                        child: Row(
                          // Change from Column to Row
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Product', // Replace with your text
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '  \$90.00', // Replace with your text
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add), // Replace with your icon
                        onPressed: () {}, // Add your onPressed function here
                      ),
                      IconButton(
                        icon: Icon(Icons.remove), // Replace with your icon
                        onPressed: () {}, // Add your onPressed function here
                      ),
                      Text(
                        'Quantity: 1', // Replace with your text
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              )),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Adjusts the spacing between the buttons
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Add your onPressed function here
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0), // Adjust the padding here
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 20, // Adjust the font size here
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), // Set the background color here
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Set the font color here
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
