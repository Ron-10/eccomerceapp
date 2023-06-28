import 'package:flutter/material.dart';
import 'package:my_page/core/features/shop/presentation/product_card.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Shop page',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepOrange,
              centerTitle: true,
            ),
            body: Column(children: [
              // Name of the tabs will here //
              TabBar(labelColor: Colors.deepOrange, tabs: [
                Center(child: Tab(text: 'Foods')),
                Center(
                    child: Tab(
                      text: 'Clothes',
                    )),
                Center(
                    child: Tab(
                      text: 'Books',

                    )),
              ]),
              Expanded(
                child: TabBarView(children: [
                  GridView.builder(
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      // Get the clothes product data

                      return EcommerceCard(
                          productImage: "assets/burger.png",
                          productTitle: "Burger",
                          productprice: "Rs:100");
                    },
                  ),
                  GridView.builder(
                    itemCount: 10, // Replace with actual item count for Foods
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      // Replace with logic to display Foods products
                      return EcommerceCard(
                          productImage: "assets/spiderman.png",
                          productTitle: "Spiderman",
                          productprice: "Rs:1000");

                    },
                  ),
                  GridView.builder(
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      // Get the clothes product data

                      return EcommerceCard(
                          productImage: "assets/books.jpg",
                          productTitle: "The Brief History Of Time",
                          productprice: "Rs:100");
                    },
                  ),

                ]),
              ),
              //When we select the tabbar which page will be selected is defined here
            ])));
  }
}