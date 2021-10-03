import 'package:flutter/material.dart';

import 'counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterWithFavBtn> createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              if (mounted) {
                setState(() {
                  fav = !fav;
                });
              }
            },
            icon: Icon(
              fav ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            ),
          ),
        )
      ],
    );
  }
}
