// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../api/api_calls.dart';
import '../models/models.dart';
import '../utils/utils.dart';

class AddNewStudents extends StatefulWidget {
  const AddNewStudents({super.key});

  @override
  State<AddNewStudents> createState() => _AddNewStudentsState();
}

class _AddNewStudentsState extends State<AddNewStudents> {
  final _key = GlobalKey<FormState>();
  final APICalls _apiCalls = APICalls();
  Student _newStudent = Student(
    sId: '',
    name: '',
    fatherName: '',
    contact: '',
    dob: '',
    registrationNo: '',
    createdAt: '',
    updatedAt: '',
    iV: 0,
  );
  Map<String, Object> initValue = {
    'name': '',
    'father-name': '',
    'dob': DateTime.now(),
    'contact': '',
    'registrationNo': '',
  };
  String _dob = '';
  final FocusNode _nameNode = FocusNode();
  final FocusNode _fNameNode = FocusNode();
  final FocusNode _dateNode = FocusNode();
  final FocusNode _regNoNode = FocusNode();
  final FocusNode _dobNode = FocusNode();
  final FocusNode _contactNode = FocusNode();
  final FocusNode _btnNode = FocusNode();
  bool init = true;
  @override
  void dispose() {
    _nameNode.dispose();
    _dateNode.dispose();
    _fNameNode.dispose();
    _dobNode.dispose();
    _regNoNode.dispose();
    _contactNode.dispose();
    _btnNode.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if (init) {
      final modalRouteData = ModalRoute.of(context)!.settings.arguments;
      if (modalRouteData != null) {
        final data = modalRouteData as Map<String, dynamic>;
        _newStudent = data['student'] as Student;
        initValue = {
          'name': _newStudent.name!,
          'father-name': _newStudent.fatherName!,
          'dob': DateTime.parse(_newStudent.dob!),
          'contact': _newStudent.contact!,
          'registrationNo': _newStudent.registrationNo!,
        };
        _dob = DateTime.parse(_newStudent.dob!).toString();
      }
      init = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_newStudent.sId == '' ? 'New student' : 'Update Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: ListView(
            children: [
              Text(_newStudent.sId == '' ? 'New student' : 'Update Student'),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: initValue['name'].toString(),
                focusNode: _nameNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Name"),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Name field can't be empty ";
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  FocusScope.of(context).requestFocus(_fNameNode);
                },
                onSaved: (v) {
                  _newStudent = Student(
                    name: v.toString(),
                    fatherName: _newStudent.fatherName,
                    contact: _newStudent.contact,
                    dob: _newStudent.dob,
                    registrationNo: _newStudent.registrationNo,
                    sId: _newStudent.sId,
                    createdAt: _newStudent.createdAt,
                    updatedAt: _newStudent.updatedAt,
                    iV: _newStudent.iV,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: initValue['father-name'].toString(),
                focusNode: _fNameNode,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text("Father Name"),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Father Name field must not be empty ";
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  FocusScope.of(context).requestFocus(_contactNode);
                },
                onSaved: (v) {
                  _newStudent = Student(
                    name: _newStudent.name,
                    fatherName: v.toString(),
                    contact: _newStudent.contact,
                    dob: _newStudent.dob,
                    registrationNo: _newStudent.registrationNo,
                    sId: _newStudent.sId,
                    createdAt: _newStudent.createdAt,
                    updatedAt: _newStudent.updatedAt,
                    iV: _newStudent.iV,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: initValue['contact'].toString(),
                focusNode: _contactNode,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  label: Text("Contact"),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  final regex = RegExp(r'^(?:\+923\d{9}|03\d{9})$');
                  if (v!.isEmpty) {
                    return "Contact Field not be empty ";
                  } else if (v.length < 11) {
                    return "provide valid Contact ";
                  } else if (!regex.hasMatch(v)) {
                    return "provide valid Contact ";
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  FocusScope.of(context).requestFocus(_regNoNode);
                },
                onSaved: (v) {
                  _newStudent = Student(
                    name: _newStudent.name,
                    fatherName: _newStudent.fatherName,
                    contact: v.toString(),
                    dob: _newStudent.dob,
                    registrationNo: _newStudent.registrationNo,
                    sId: _newStudent.sId,
                    createdAt: _newStudent.createdAt,
                    updatedAt: _newStudent.updatedAt,
                    iV: _newStudent.iV,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: TextFormField(
                  initialValue: initValue['registrationNo'].toString(),
                  focusNode: _regNoNode,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text("Registration No"),
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    final regex = RegExp(r'^\d{4}-[A-Z]{2}-\d+$');
                    if (v!.isEmpty) {
                      return "Registration No Field not be empty ";
                    } else if (!regex.hasMatch(v)) {
                      return 'Registration No is not valid';
                    }
                    return null;
                  },
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(_dateNode);
                  },
                  onSaved: (v) {
                    _newStudent = Student(
                      sId: _newStudent.sId,
                      createdAt: _newStudent.createdAt,
                      updatedAt: _newStudent.updatedAt,
                      iV: _newStudent.iV,
                      name: _newStudent.name,
                      fatherName: _newStudent.fatherName,
                      contact: _newStudent.contact,
                      dob: _newStudent.dob,
                      registrationNo: v.toString(),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Card(
                        child: ListTile(
                      title: Text(
                        _dob.isEmpty
                            ? 'no date selected'
                            : DateFormat.yMMMd().format(
                                DateTime.parse(_dob),
                              ),
                      ),
                    )),
                  ),
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      focusNode: _dateNode,
                      // style: IconButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () async {
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (selectedDate != null) {
                          setState(() {
                            _dob = selectedDate.toIso8601String();
                            _newStudent = Student(
                              sId: _newStudent.sId,
                              createdAt: _newStudent.createdAt,
                              updatedAt: _newStudent.updatedAt,
                              iV: _newStudent.iV,
                              name: _newStudent.name,
                              fatherName: _newStudent.fatherName,
                              contact: _newStudent.contact,
                              dob: _dob,
                              registrationNo: _newStudent.registrationNo,
                            );
                          });
                          FocusScope.of(context).requestFocus(_btnNode);
                        }
                      },
                      icon: const Icon(Icons.calendar_month),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  onSave();
                },
                child: Text(
                    _newStudent.sId == '' ? 'New student' : 'Update Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onSave() async {
    final utilsProvider = Provider.of<Utils>(context, listen: false);
    if (_key.currentState!.validate() && _dob.isNotEmpty) {
      _key.currentState!.save();
      try {
        if (_newStudent.sId!.isEmpty) {
          utilsProvider.showSnackBar(
              context, await _apiCalls.postStudents(_newStudent));
        } else {
          utilsProvider.showSnackBar(context,
              await _apiCalls.putStudents(_newStudent.sId!, _newStudent));
        }
      } catch (err) {
        utilsProvider.showSnackBar(
          context,
          err.toString(),
        );
      }
    }
  }
}
