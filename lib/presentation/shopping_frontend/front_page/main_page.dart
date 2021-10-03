import 'package:flutter/material.dart';

import 'main_page_helper.dart/body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

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
          icon:const Icon(Icons.search),
        ),
        body:const Body(),
      ),
    );
  }
}
