import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          body: Column(
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
                      fontWeight: FontWeight.bold, // Make the text bold
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
                      fontWeight: FontWeight.bold, // Make the text bold
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
                      fontWeight: FontWeight.bold, // Make the text bold
                    ),
                  ),
                ),
              ),
              DualTextCard(),
            ],
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
        'data:image/png;base64,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',
    this.text = '**** **** **** 3947',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Image.network(
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
        'https://cdn.cookielaw.org/logos/9375bad7-f65e-4f8a-bc16-8254723bd66a/10736aa6-11a1-40d7-b1de-de46f2e1acf2/DHL_logo_rgb.png',
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
              child: Image.network(
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
