import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView(
          children: <Widget>[
            MyCard('111', 'Yoda', 'https://www.gstatic.com/webp/gallery/4.jpg'),
            MyCard('111', 'Sky walker',
                'https://www.gstatic.com/webp/gallery/1.jpg'),
            MyCard('111', '444', 'https://www.gstatic.com/webp/gallery/2.jpg'),
            MyCard('111', '444', 'https://www.gstatic.com/webp/gallery/3.jpg'),
          ],
        ));
  }
}

class MyCard extends StatelessWidget {
  final String _text;
  final String _author;
  final String _imageUrl;
  const MyCard(
    this._text,
    this._author,
    this._imageUrl, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(30),
        elevation: 10,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage('$_imageUrl'))),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('$_text'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
              alignment: Alignment(1, 0),
              child: Text(
                '$_author',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            )
          ],
        ));
  }
}
