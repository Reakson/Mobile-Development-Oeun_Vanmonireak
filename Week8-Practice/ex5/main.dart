// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// void main() async {
//   Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');

//   Response response = await http.get(url);

//   if (response.statusCode != 200) {
//     throw Exception('Failed to fetch user');
//   }

//   Map<String, dynamic> json = jsonDecode(response.body);

//   User user = User.fromJson(json);

//   print(user);
// }

// class User {
//   final int id;
//   final String name;
//   final String username;
//   final String email;

//   User({
//     required this.id,
//     required this.name,
//     required this.username,
//     required this.email,
//   });

//   static User fromJson(Map<String, dynamic> json) {
//     const String idKey = 'id';
//     const String nameKey = 'name';
//     const String usernameKey = 'username';
//     const String emailKey = 'email';

//     assert(json[idKey] is int);
//     assert(json[nameKey] is String);
//     assert(json[usernameKey] is String);
//     assert(json[emailKey] is String);

//     int id = json[idKey];
//     String name = json[nameKey];
//     String username = json[usernameKey];
//     String email = json[emailKey];

//     return User(id: id, name: name, username: username, email: email);
//   }

//   @override
//   String toString() {
//     return "\nUser Info \nID: $id - Name: $name - Username: $username - Email: $email";
//   }
// }
