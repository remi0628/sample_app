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
              CardAssetImage('remi'),
              _cardNetWorkImage(),
              CardAssetImage('1'),
              CardAssetImage('perfume'),
              CardAssetImage('4'),
              CardAssetImage('arupaka'),
              CardAssetImage('0'),
              CardAssetImage('2'),
            ],
          ),
        ),
      ],
    );
  }
}

class CardAssetImage extends StatelessWidget {
  final String _picture;
  CardAssetImage(this._picture);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$_picture.jpg'),
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
