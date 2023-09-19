import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question1 extends StatefulWidget {
  const Question1({super.key});

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _ageController = TextEditingController();
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomText(
            text:
                'Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.',
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _nameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              label: Text('Name'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('age'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (_nameController.text.isNotEmpty &&
                  _ageController.text.isNotEmpty) {
                onClickShow();
              } else {
                Fluttertoast.showToast(msg: 'Input box is Empty');
              }
            },
            child: const Text('Result'),
          ),
        ],
      ),
    );
  }

  void onClickShow() {
    try {
      age = 100 - int.parse(_ageController.text);
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Result',
          textAlign: TextAlign.center,
        ),
        content: Container(
          height: 100,
          child: Column(children: [
            Text(
                'Your Name is ${_nameController.text} and your age is ${_ageController.text} '),
            const SizedBox(
              height: 10,
            ),
            Text('You have more $age to become 100 year old.'),
          ]),
        ),
      ),
    );
  }
}
