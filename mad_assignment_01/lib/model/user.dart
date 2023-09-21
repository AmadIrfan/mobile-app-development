import 'dart:convert';

class Users {
  String email;
  String name;
  String profileImage;
  int messagesNo;

  Users({
    required this.email,
    required this.name,
    required this.profileImage,
    required this.messagesNo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'profileImage': profileImage,
      'messagesNo': messagesNo,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      email: map['email'] as String,
      name: map['name'] as String,
      profileImage: map['profileImage'] as String,
      messagesNo: map['messagesNo'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) =>
      Users.fromMap(json.decode(source) as Map<String, dynamic>);
}

class UserManage {
  final List<Users> _users = [
    Users(
        name: 'Panji Pradana',
        email: 'Panjipradana@gmail.com',
        profileImage: '',
        messagesNo: 0),
    Users(
        name: 'Sulistyo Aji',
        email: 'SistAji@mail.com',
        profileImage: '',
        messagesNo: 5),
    Users(
        name: 'Astaru Lopez',
        email: 'AsPez@mail.com',
        profileImage: '',
        messagesNo: 10),
  ];
  List<Users> get user {
    return [..._users];
  }
}
