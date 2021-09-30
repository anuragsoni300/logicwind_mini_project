import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories.dart';
import 'product_card.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var fsconnect = FirebaseFirestore.instance;
  QuerySnapshot<Map<String, dynamic>>? d;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    d = await fsconnect.collection("bag").get();
    setState(() {
      for (var i in d!.docs) {
        print(i.data());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Women",
           style: GoogleFonts.gruppo(
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: GridView.builder(
              itemCount: d == null ? 0 : d!.docs.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8),
                child: ProductCard(
                  product: d!.docs[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
