import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/components/marketplace_cart.dart';

class MarketplacePay extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  MarketplacePay({
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
                      onPressed: () {
                        // Add your onPressed function here
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomCard(),
                AddressCard(),
                Container(
                  margin: EdgeInsets.all(10.0), // Adjust the margin here
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 20, // Adjust the font size here
                      ),
                    ),
                  ),
                ),
                ImageTextCard(),
                Container(
                  margin: EdgeInsets.all(10.0), // Adjust the margin here
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Delivery method',
                      style: TextStyle(
                        fontSize: 20, // Adjust the font size here
                      ),
                    ),
                  ),
                ),
                TripleImageCard(),
                Container(
                  margin: EdgeInsets.all(10.0), // Adjust the margin here
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Payment details',
                      style: TextStyle(
                        fontSize: 20, // Adjust the font size here
                      ),
                    ),
                  ),
                ),
                DualTextCard(),
              ],
            ),
          ),
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
                      'Pay',
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

class CustomCard extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  CustomCard({
    this.postImage = 'assets/plant.png',
    this.title = 'Product',
    this.price = '\$90.00',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                width: 90, // Adjust as needed
                height: 90, // Adjust as needed
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '  \$90.00', // Replace with your text
                      style: TextStyle(fontSize: 14, color: Colors.blue),
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
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  final String address;
  final IconData iconData;

  AddressCard({
    this.address = '''Address:
1, Jalan 2, Taman 3, 
Kuala Mudah, Kedah, 08000''',
    this.iconData = Icons.location_city,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Icon(
                iconData, // Replace with your icon
                size: 24.0,
              ),
              SizedBox(width: 10), // Add some spacing
              Expanded(
                child: Text(
                  address, // Replace with your text
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {}, // Add your onPressed function here
                child: Text(
                  'Edit',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageTextCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  ImageTextCard({
    this.imageUrl =
        'assets/mastercard.png',
    this.text = '**** **** **** 3947',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              imageUrl, // Replace with your image url
              width: 100, // Adjust as needed
              height: 100, // Adjust as needed
              fit: BoxFit.cover, // Adjust as needed
            ),
            SizedBox(width: 10), // Add some spacing
            Expanded(
              child: Text(
                text, // Replace with your text
                style: TextStyle(fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {}, // Add your onPressed function here
              child: Text(
                'Edit',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripleImageCard extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;

  TripleImageCard({
    this.imageUrl1 = 'https://amcham.com.my/wp-content/uploads/Fedex-logo.png',
    this.imageUrl2 =
        'https://s3.ap-southeast-1.amazonaws.com/easyparcel-static/Public/source/general/img/easyTrack/Pos_Laju.jpg',
    this.imageUrl3 =
        'assets/DHL_logo_rgb.png',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.network(
                imageUrl1, // Replace with your image url
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10), // Add some spacing
            Expanded(
              child: Image.network(
                imageUrl2, // Replace with your image url
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10), // Add some spacing
            Expanded(
              child: Image.asset(
                imageUrl3, // Replace with your image url
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DualTextCard extends StatelessWidget {
  final String leftText;
  final String rightText;

  DualTextCard({
    this.leftText = '''Items price: 
Tax:
Delivery Fee:
Total:''',
    this.rightText = '''RM90.00
RM1.00
RM9.00
RM100.00''',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                leftText, // Replace with your left text
                style: TextStyle(fontSize: 16),
              ),
              Text(
                rightText, // Replace with your right text
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
