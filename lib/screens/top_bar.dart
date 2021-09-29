import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  final String text;
  const TopBar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          Text(
            text,
            style: GoogleFonts.shadowsIntoLight(
              textStyle: TextStyle(
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
