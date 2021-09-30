import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/screens/shopping_frontend/detail_page/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final QueryDocumentSnapshot<Map<String, dynamic>> product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(
            product: product,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: "${product.id}",
                  child: SizedBox(
                    height: 250,
                    width: 250,
                    child: CachedNetworkImage(
                      imageUrl: product['image'],
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          Center(child: Icon(Icons.error)),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              // products is out demo list
              product['title'],
              style: GoogleFonts.gruppo(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Text(
            "\$${product['prize']}",
            style: GoogleFonts.gruppo(
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
