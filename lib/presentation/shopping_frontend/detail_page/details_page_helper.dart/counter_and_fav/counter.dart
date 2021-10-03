import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
          height: 32,
          child: IconButton(
            onPressed: () {
              if (numOfItems > 1) {
                if (mounted) {
                  setState(() {
                    numOfItems--;
                  });
                }
              }
            },
            icon: const Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: GoogleFonts.gruppo(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: IconButton(
            onPressed: () {
              if (mounted) {
                setState(() {
                  numOfItems++;
                });
              }
            },
            icon: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
