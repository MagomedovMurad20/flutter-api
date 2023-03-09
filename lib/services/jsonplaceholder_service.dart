import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:jsonapi/models/user.dart';
import 'package:jsonapi/models/post.dart';
import 'package:jsonapi/models/album.dart';

class JsonplaceholderService {
  static Future<List<User>> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List<User> users;
      var json = jsonDecode(response.body);
      users = List<User>.from(json.map((x) => User.fromJson(x)));
      return users;
    } else {
      throw Exception('Failed to load users list');
    }
  }

  static Future<List<Post>> fetchUserPosts(int userId) async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/$userId/posts'));

    if (response.statusCode == 200) {
      List<Post> posts;
      var json = jsonDecode(response.body);
      posts = List<Post>.from(json.map((x) => Post.fromJson(x)));
      return posts;
    } else {
      throw Exception('Failed to load posts list');
    }
  }

  static Future<List<Album>> fetchUserAlbums(int userId) async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/$userId/albums'));

    if (response.statusCode == 200) {
      List<Album> albums;
      var json = jsonDecode(response.body);
      albums = List<Album>.from(json.map((x) => Album.fromJson(x)));
      return albums;
    } else {
      throw Exception('Failed to load albums list');
    }
  }
}
