import 'package:flutter/material.dart';

import 'main_page_helper.dart/body.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          icon: Icon(Icons.search),
        ),
        body: Body(),
      ),
    );
  }
}
