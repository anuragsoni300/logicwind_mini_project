import 'package:flutter/material.dart';

import 'main_page_helper.dart/body.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
