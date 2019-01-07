import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: StateFullHomePage(),
    );
  }
}

class Data {
  final String text;
  final String author;
  final String imageUrl;
  Data(this.text, this.author, this.imageUrl);
}

class StateFullHomePage extends StatefulWidget {
  @override
  _StateFullHomePageState createState() => _StateFullHomePageState();
}

class _StateFullHomePageState extends State<StateFullHomePage> {
  @override
  List<Data> datas = [];
  final _formKey = GlobalKey<FormState>();
  String _text;
  String _author;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "Text"),
                    onSaved: (String value) {
                      _text = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Author"),
                    onSaved: (String value) {
                      _author = value;
                    },
                  ),
                  RaisedButton(
                    onPressed: () {
                      _formKey.currentState.save(); // important
                      setState(() {
                        datas.insert(
                            0,
                            Data(_text, _author,
                                'https://www.gstatic.com/webp/gallery/2.jpg'));
                      });

                      _formKey.currentState.reset();
                    },
                    child: Text('Add'),
                  )
                ],
              ),
            ),
            Expanded(
              child: datas.length == 0
                  ? Center(
                      child: Text('No data'),
                    )
                  : ListView.builder(
                      itemCount: datas.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MyCard(datas[index].text, datas[index].author,
                            datas[index].imageUrl);
                      },
                    ),
            )
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
