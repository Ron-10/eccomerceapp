import 'package:flutter/material.dart';
import 'package:my_page/core/features/cart/presentation/cart.dart';
import 'package:my_page/core/features/shop/presentation/product_detail.dart';

class EcommerceCard extends StatelessWidget {
  EcommerceCard({super.key,
    required this.productImage,
    required this.productTitle,
    required this.productprice});

  final String productImage;
  final String productTitle;
  final String productprice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          children: [
            Expanded(child: Image.asset(productImage, fit: BoxFit.cover)),
            Text(productTitle),
            Text(productprice),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(
          productName: productTitle,
          productDescription: '',
          productPrice: productprice,
          productImage: productImage,
        ),
        ),
        );
      },
    );
  }
}

cart({required String name}) {
  CartPage();
}