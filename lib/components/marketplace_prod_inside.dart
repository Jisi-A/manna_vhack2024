import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/components/marketplace_cart.dart';
import 'package:manna_vhack2024/components/marketplace_pay.dart';

class MarketplaceProdInside extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  MarketplaceProdInside({
    this.postImage = 'assets/plant.png',
    this.title = 'Product',
    this.price = '\$90.00',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20), // Adjust the top padding value here
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MarketplaceCart()), // Replace NewPage with the class of your new page
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.forum),
                      onPressed: () {},
                    )
                  ],
                )
              ],
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
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '$price',
                          style: TextStyle(
                            fontSize: 25, // Adjust the font size here
                            color: Colors.blue, // Adjust the color here
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '''
Product detail :
♛ Nordic Style Vase - Blue & White Color ♛
⁂ Nordic style / European design
⁂ Imitation Ceramic
⁂ Anti-fall
⁂ Modern
⁂ Creativity & Simplicity
⁂ Home Decorations
⁂ Flower arrangements
↳ Material ➪ PP  (Polypropylene Plastic)
- Safe environmental protection
- Durable
- Smooth and meticulous
- Easy to clean
- Thickened bottom to prevent breakage
''',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Adjusts the spacing between the buttons
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MarketplacePay()), // Replace NewPage with the class of your new page
                    );
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
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.all(8.0), // Adjust the padding here
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the content in the row
                      children: <Widget>[
                        Icon(Icons.shopping_cart), // Add your icon here
                        SizedBox(
                            width:
                                5), // Add some spacing between the icon and the text
                        Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 20, // Adjust the font size here
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.grey), // Set the background color here
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
