import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rest_api_app/models/new_student.dart';

import '../models/models.dart';

class APICalls extends ChangeNotifier {
  // final host = "http://10.5.22.82:4000";
  final host = "http://192.168.0.106:4000";
  Future<Students> getStudents() async {
    try {
      Uri url = Uri.parse('$host/students');
      // Uri url =
      // Uri.parse('https://node-app-production-ce24.up.railway.app/students');
      Response httpResponse = await get(url);
      final data = json.decode(httpResponse.body.toString());
      if (httpResponse.statusCode == 200) {
        // debugPrint(data.toString());
        debugPrint('found');
        return Students.fromJson(data);
      } else {
        debugPrint('error not found');
        return Students.fromJson(data);
      }
    } catch (err) {
      debugPrint('Exception');
      rethrow;
    }
  }

  Future<String> postStudents(Student newStudent) async {
    try {
      String name = newStudent.name!;
      String fName = newStudent.fatherName!;
      String regNo = newStudent.registrationNo!;
      DateTime dob = DateTime.parse(newStudent.dob!);
      String contact = newStudent.contact!;
      // Uri url = Uri.parse(
      // 'https://node-app-production-ce24.up.railway.app/students/reg-students');
      Uri url = Uri.parse('$host/students/reg-students');
      Response httpResponse = await post(url,
          body: json.encode(
            {
              "name": name,
              "registrationNo": regNo,
              "fatherName": fName,
              "dob": dob.toString(),
              "contact": contact,
            },
          ),
          headers: {
            "content-type": "application/json",
          });

      final data = json.decode(httpResponse.body.toString());
      if (httpResponse.statusCode == 200) {
        debugPrint(data['message']);
        return data['message'];
      } else {
        debugPrint(data['message']);
        return data['message'];
      }
    } catch (err) {
      return err.toString();
    }
  }

  Future<String> deleteStudents(String id) async {
    try {
      Uri url = Uri.parse('$host/students/del/$id');
      Response response = await delete(url);

      final data = json.decode(response.body.toString());
      // print(data);
      if (response.statusCode == 200) {
        return data['message'];
      } else {
        return data['message'];
      }
    } catch (err) {
      // print(err);
      return err.toString();
    }
  }

  Future<String> putStudents(String id, Student newStudent) async {
    try {
      String name = newStudent.name!;
      String fName = newStudent.fatherName!;
      String regNo = newStudent.registrationNo!;
      DateTime dob = DateTime.parse(newStudent.dob!);
      String contact = newStudent.contact!;

      Uri url = Uri.parse(
        '$host/students/$id',
      );
      Response response = await put(url,
          body: json.encode(
            {
              "name": name,
              "registrationNo": regNo,
              "fatherName": fName,
              "dob": dob.toString(),
              "contact": contact,
            },
          ),
          headers: {
            "content-type": "application/json",
          });

      final data = json.decode(response.body.toString());
      if (response.statusCode == 200) {
        return data['message'];
      } else {
        return data['message'];
      }
    } catch (err) {
      return err.toString();
    }
  }
}
