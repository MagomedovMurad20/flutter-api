import 'package:jsonapi/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<User> fetchUsers() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
