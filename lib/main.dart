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
            Card(
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
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.gstatic.com/webp/gallery/5.jpg'))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Fear lead to anger...anger leads to hate..hate'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                      alignment: Alignment(1, 0),
                      child: Text(
                        'Yoda (Phantom Manance)',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                )),
            Card(
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
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.gstatic.com/webp/gallery/5.jpg'))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Fear lead to anger...anger leads to hate..hate'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                      alignment: Alignment(1, 0),
                      child: Text(
                        'Yoda (Phantom Manance)',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                )),
            Card(
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
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.gstatic.com/webp/gallery/5.jpg'))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Fear lead to anger...anger leads to hate..hate'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                      alignment: Alignment(1, 0),
                      child: Text(
                        'Yoda (Phantom Manance)',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
