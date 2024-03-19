import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manna_vhack2024/components/marketplace_cart.dart';
import 'package:manna_vhack2024/components/marketplace_pay.dart';
import 'package:manna_vhack2024/components/marketplace_prod.dart';

class marketplace_cate extends StatefulWidget {
  @override
  State<marketplace_cate> createState() => _marketplace_cateState();
}

class _marketplace_cateState extends State<marketplace_cate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding:
              EdgeInsets.only(top: 30), // Adjust the top padding value here
          child: Row(
            children: [
              BackButton(
                color: Colors.black,
              ),
              Expanded(
                child: SearchBar(),
              ),
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
          ),
        ),
        GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            children: [
              productCard(),
              productCard(),
              productCard(),
              productCard(),
              productCard(),
            ]),
      ]),
    ));
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
