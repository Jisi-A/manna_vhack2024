import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';
import 'package:manna_vhack2024/components/marketplace_cart.dart';
import 'package:manna_vhack2024/components/marketplace_pay.dart';
import 'package:manna_vhack2024/components/marketplace_cate.dart';

class marketplace extends StatefulWidget {
  @override
  State<marketplace> createState() => _marketplaceState();
}

class _marketplaceState extends State<marketplace> {
  final List<CardItem> cardItems = [
    CardItem(
        imageUrl:
            'https://livingbydesign.net.au/cdn/shop/products/MONATRIOVASES_Sage_SETOF3.jpg?v=1677457035',
        text: 'Vase'),
    CardItem(
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1679061325-chinese-evergreens-6414713d074fc.jpg?crop=0.98xw:1xh;center,top&resize=980:*',
        text: 'Plant'),
    CardItem(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIElcae68SQiDA_kzVm_D_5zf20pw_8Gr1xCC4P_rz4i2qNmCx3rUwD6tRMXrshUZZqX4&usqp=CAU',
        text: 'Seed'),
    CardItem(
        imageUrl: 'https://cdn.store-assets.com/s/713911/f/6449621.jpeg',
        text: 'Tools'),
    CardItem(
        imageUrl:
            'https://miro.medium.com/v2/resize:fit:800/1*EqkY_Jgb33exSxM70zqyyA.png',
        text: 'Fertilizer'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: SearchBar(),
              )),
              IconButton(
                padding: EdgeInsets.only(top: 30),
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
                padding: EdgeInsets.only(top: 30),
                icon: Icon(Icons.forum),
                onPressed: () {},
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Categories:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cardItems.length,
              itemBuilder: (context, index) {
                return HorizontalCardList(cardItem: cardItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class CardItem {
  final String imageUrl;
  final String text;

  CardItem({required this.imageUrl, required this.text});
}

class HorizontalCardList extends StatelessWidget {
  final CardItem cardItem;

  HorizontalCardList({required this.cardItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => marketplace_cate()),
        );
      },
      child: Card(
        child: Row(
          children: [
            Image.network(
              cardItem.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cardItem.text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
