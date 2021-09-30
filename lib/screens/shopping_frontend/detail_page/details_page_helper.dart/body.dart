import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_to_cart/add_to_cart.dart';
import 'color_and_size/color_and_size.dart';
import 'counter_and_fav/counter_and_fav.dart';
import 'description/description.dart';
import 'produt_image/product_image.dart';

class Body extends StatelessWidget {
  final QueryDocumentSnapshot<Map<String, dynamic>> product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 20,
                      right: 20,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        SizedBox(height: 10),
                        Description(product: product),
                        SizedBox(height: 10),
                        CounterWithFavBtn(),
                        SizedBox(height: 10),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
