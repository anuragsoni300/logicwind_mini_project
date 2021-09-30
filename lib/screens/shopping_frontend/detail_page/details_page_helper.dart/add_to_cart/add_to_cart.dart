import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final QueryDocumentSnapshot<Map<String, dynamic>> product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.cyan,
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                        "Added to Cart",
                        style: GoogleFonts.gruppo(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      duration: Duration(milliseconds: 600),
                    ),
                  );
                },
                icon: Icon(
                  Icons.card_travel,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.cyan,
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                        "Order Placed",
                        style: GoogleFonts.gruppo(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      duration: Duration(milliseconds: 600),
                    ),
                  );
                },
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: GoogleFonts.gruppo(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
