import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter App',
      home:  MainPage(),
      theme: CupertinoThemeData(primaryColor: Colors.blue),
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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.asset('assets/remi.jpg'),
        )
      ),
    );
  }
}

class PicturePage extends StatefulWidget {
  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(40),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/remi.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(
                      "http://2xmlabs.com/wp-content/uploads/2018/01/C21NRVrUoAAI7eI.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/perfume.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/arupaka.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
            Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
            Container(
            padding: const EdgeInsets.all(8),
            child: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.red[200],
          ),
            ],
          ),
        ),
      ],
    );
  }
}

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
                    )
                  ),
                ],
              ),
            );
          }
        )
      )
    );
  }
}