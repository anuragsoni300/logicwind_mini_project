import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  var fsconnect = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var d = await fsconnect.collection("bag").get();
    // print(d.docs[0].data());
    for (var i in d.docs) {
      print(i.data());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // StreamBuilder(builder: (context, snapshot) {
    //   if (snapshot.data == null) return Container();
    // });
  }
}
