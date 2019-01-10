import 'package:http/http.dart' as http;
import 'package:myapp/model/post.dart';

class PostService {
  PostService();

  String endpoint = 'https://jsonplaceholder.typicode.com/photos';
  Future<http.Response> getPosts() async {
    return http.get(endpoint);
  }

  Future<List<Post>> getAllPosts() async {
    final response = await http.get(endpoint);
    return allPostsFromJson(response.body);
  }

  Future deletePost(id) async {
    final response = await http.delete('${endpoint}/${id}');
    print(response.body);
  }
}
