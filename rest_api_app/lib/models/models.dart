import 'package:flutter/material.dart';

class Students with ChangeNotifier {
  String? _status;
  int? _statusCode;
  List<Student>? _student;

  Students({String? status, int? statusCode, List<Student>? student}) {
    if (status != null) {
      _status = status;
    }
    if (statusCode != null) {
      _statusCode = statusCode;
    }
    if (student != null) {
      _student = student;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  int? get statusCode => _statusCode;
  set statusCode(int? statusCode) => _statusCode = statusCode;
  List<Student>? get student => _student;
  set student(List<Student>? student) => _student = student;

  Students.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _statusCode = json['status_code'];
    if (json['student'] != null) {
      _student = <Student>[];
      json['student'].forEach((v) {
        _student!.add(Student.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = _status;
    data['status_code'] = _statusCode;
    if (_student != null) {
      data['student'] = _student!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Student with ChangeNotifier {
  String? _sId;
  String? _name;
  String? _registrationNo;
  String? _fatherName;
  String? _dob;
  String? _contact;
  String? _createdAt;
  String? _updatedAt;
  int? _iV;

  Student(
      {String? sId,
      String? name,
      String? registrationNo,
      String? fatherName,
      String? dob,
      String? contact,
      String? createdAt,
      String? updatedAt,
      int? iV}) {
    if (sId != null) {
      _sId = sId;
    }
    if (name != null) {
      _name = name;
    }
    if (registrationNo != null) {
      _registrationNo = registrationNo;
    }
    if (fatherName != null) {
      _fatherName = fatherName;
    }
    if (dob != null) {
      _dob = dob;
    }
    if (contact != null) {
      _contact = contact;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
    if (iV != null) {
      _iV = iV;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get registrationNo => _registrationNo;
  set registrationNo(String? registrationNo) =>
      _registrationNo = registrationNo;
  String? get fatherName => _fatherName;
  set fatherName(String? fatherName) => _fatherName = fatherName;
  String? get dob => _dob;
  set dob(String? dob) => _dob = dob;
  String? get contact => _contact;
  set contact(String? contact) => _contact = contact;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;

  Student.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _name = json['name'];
    _registrationNo = json['registrationNo'];
    _fatherName = json['fatherName'];
    _dob = json['dob'];
    _contact = json['contact'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = _sId;
    data['name'] = _name;
    data['registrationNo'] = _registrationNo;
    data['fatherName'] = _fatherName;
    data['dob'] = _dob;
    data['contact'] = _contact;
    data['createdAt'] = _createdAt;
    data['updatedAt'] = _updatedAt;
    data['__v'] = _iV;
    return data;
  }
}
