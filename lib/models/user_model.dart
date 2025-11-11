class UserModel {
  final int id;
  final String name;
  final String email;
  final String? password;
  final String role;
  final String? token;
  final String? emailVerifiedAt;
  final int? actived;
  final int? deleted;
  final String? code;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.password,
    required this.role,
    this.token,
    this.emailVerifiedAt,
    this.actived,
    this.deleted,
    this.code,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    String role = json['role'] ?? 'u';
    if (!['a', 'u', 'o'].contains(role)) {
      role = 'u';
    }

    //User to create in Login form
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: role,
      token: json['token'], // only in login
      emailVerifiedAt: json['email_verified_at'],
      actived: json['actived'],
      deleted: json['deleted'],
      code: json['code'],
    );
  }

  //Json to create in Register form
  Map<String, dynamic> toJson() {
    return {
      'name': name, 
      'email': email,
      'password': password, 
      'role': role,
    };
  }
}
