import 'package:flutter/material.dart';
import 'package:myapp/model/post.dart';

class PostCard extends StatefulWidget {
  final Post _post;
  final void Function(int) deleteCard;
  PostCard(this._post, this.deleteCard, {Key key}) : super(key: key);
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('${widget._post.url}'))),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        widget._post.title,
                        textAlign: TextAlign.left,
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Color(0xFFff0000),
                      ),
                      onPressed: () {
                        widget.deleteCard(widget._post.id);
                      },
                    ),
                  ],
                )),
          ])),
    );
  }
}
