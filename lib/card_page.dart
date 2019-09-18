import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: ListView(
            children: List.generate(3, (index) {
      return Card(
        child: Column(
          children: <Widget>[
            Image.asset("assets/$index.jpg"),
            Container(
                margin: EdgeInsets.all(3.0),
                child: ListTile(
                  title: Text("$index.jpg"),
                  leading: Icon(Icons.person),
                  subtitle: Text("本文"),
                )),
          ],
        ),
      );
    })));
  }
}
