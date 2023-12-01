class RegisterModel {
  bool success;
  User user;
  String message;
  String token;

  RegisterModel({
    required this.success,
    required this.user,
    required this.message,
    required this.token,
  });
}

class User {
  String name;
  String email;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  User({
    required this.name,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });
}
