import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
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
              if (numOfItems > 1)
                setState(() {
                  numOfItems--;
                });
            },
            icon: Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: IconButton(
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
