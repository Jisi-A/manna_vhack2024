import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/marketplace_prod.dart';
import 'package:manna_vhack2024/components/marketplace_cart.dart';

class marketplace_cate extends StatefulWidget {
  const marketplace_cate({super.key});

  @override
  State<marketplace_cate> createState() => _marketplace_cateState();
}

class _marketplace_cateState extends State<marketplace_cate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30.0), // Adjust the value as needed
        child: Scaffold(
            body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                const BackButton(
                  color: Colors.black,
                ),
                const Expanded(
                  child: SearchBar(),
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
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
                  icon: const Icon(Icons.forum),
                  onPressed: () {
                    // Add your onPressed function here
                  },
                )
              ],
            ),
            GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: const [
                  productCard(),
                  productCard(),
                  productCard(),
                  productCard(),
                  productCard(),
                ]),
          ]),
        )));
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
