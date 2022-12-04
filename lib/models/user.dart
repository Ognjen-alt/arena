class User {
  final String id;
  final String email;
  final String password;

    User({
    required this.id,
    required this.email,
    required this.password,
});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  User copyWith({
    String? id,
    String? email,
    String? password,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}