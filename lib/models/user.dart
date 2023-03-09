import 'package:jsonapi/models/adress.dart';
import 'package:jsonapi/models/company.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String website;
  final String phone;
  final Address address;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.website,
    required this.phone,
    required this.company,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      company: Company.fromJson(json['company']),
      address: Address.fromJson(json['address']),
    );
  }
}
