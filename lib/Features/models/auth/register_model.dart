// models/user.dart
class User {
  final String firstName;
  final String lastName;
  final String userName;
  final String password;
  final String? email;

  User({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.password,
    this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'password': password,
      'email': email,
    };
  }
}
