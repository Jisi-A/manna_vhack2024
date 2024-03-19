import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/marketplace_prod_inside.dart';

class productCard extends StatelessWidget {
  final String postImage;
  final String title;
  final String price;

  const productCard({super.key, 
    this.postImage = 'assets/plant.png',
    this.title = 'Product',
    this.price = '\$90.00',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MarketplaceProdInside(
                  postImage: postImage, title: title, price: price)),
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
            // Spacer(),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 4, 8),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      price,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                    ),
                  ), // add this line
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
