import 'dart:convert';

Post postFromJson(String str) {
  final jsonData = json.decode(str);
  return Post.fromJson(jsonData);
}

List<Post> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Post>.from(jsonData.map((x) => Post.fromJson(x)));
}

class Post {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Post(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);
  Post.fromJson(Map<String, dynamic> json)
      : albumId = json['userId'],
        id = json['id'],
        title = json['title'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];

  Map<String, dynamic> toJson() => {
        'albumId': albumId,
        'id': id,
        'title': title,
        'url': url,
        'thumbnailUrl': thumbnailUrl,

      };
}
