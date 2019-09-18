import './home_page.dart';
import './picture_page.dart';
import './card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            title: Text('picture'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_stream),
            title: Text('Card'),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        assert(index >= 0 && index <= 3);
        switch (index) {
          case 0:
            return MyHomePage();
            break;
          case 1:
            return PicturePage();
            break;
          case 2:
            return CardPage();
            break;
        }
        return null;
      },
    );
  }
}