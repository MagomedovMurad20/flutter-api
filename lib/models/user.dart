class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String adress;
  final String website;
  final String phone;
  final String company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.adress,
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
      adress: json['adress'],
      website: json['website'],
      phone: json['phone'],
      company: json['company'],
    );
  }
}
