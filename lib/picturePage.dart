import 'package:flutter/material.dart';


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
              CardAssetImage(fileName:'assets/remi.jpg'),
              _cardNetWorkImage(),
              CardAssetImage(fileName:'assets/1.jpg'),
              CardAssetImage(fileName:'assets/perfume.jpg'),
              CardAssetImage(fileName:'assets/4.jpg'),
              CardAssetImage(fileName:'assets/arupaka.jpg'),
              CardAssetImage(fileName:'assets/0.jpg'),
              CardAssetImage(fileName:'assets/2.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}

class CardAssetImage extends StatelessWidget {
  final String fileName;
  CardAssetImage({this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('$fileName'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      color: Colors.red[200],
    );
  }
}

Widget _cardNetWorkImage() {
  return Container(
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
  );
}
