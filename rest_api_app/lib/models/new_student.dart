import 'package:flutter/material.dart';

class NewStudent with ChangeNotifier {
  String id;
  String name;
  String fatherName;
  String contact;
  String dob;
  String registrationNo;
  NewStudent({
    required this.id,
    required this.name,
    required this.fatherName,
    required this.contact,
    required this.dob,
    required this.registrationNo,
  });
}
