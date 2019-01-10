import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/model/post.dart';
import 'package:myapp/services/post_sevices.dart';
import 'package:myapp/widgets/post-card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Post>> posts;
  Future<List<Post>> datas;
  PostService postService = PostService();

  _HomePageState({Key ket, this.posts});
  @override
  initState() {
    super.initState();
    final data = postService.getAllPosts();
    print(data);
    setState(() {
      datas = data;
    });
  }

  deleteCard(int id) {
    postService.deletePost(id);
    final data = postService.getAllPosts();
    setState(() {
      datas = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Posts"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              FutureBuilder<List<Post>>(
                future: datas,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data != null) {
                      List<Post> data = snapshot.data;
                      return Expanded(
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return PostCard(data[index], deleteCard);
                          },
                        ),
                      );
                    }
                  }
                  return CircularProgressIndicator();
                },
              )
            ],
          ),
        ));
  }
}
