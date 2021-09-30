import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'details_page_helper.dart/body.dart';

class DetailsScreen extends StatelessWidget {
  final QueryDocumentSnapshot<Map<String, dynamic>> product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(int.parse(product['color'])),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
