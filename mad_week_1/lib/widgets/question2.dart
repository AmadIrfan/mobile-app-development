import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  String numType = '';

  final TextEditingController _numController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CustomText(
              text:
                  'Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.'),
          const SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _numController,
            decoration: const InputDecoration(
              label: Text('Number'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (_numController.text.isNotEmpty) {
                try {
                  if (_numController.text.isNotEmpty) {
                    int num = int.parse(_numController.text);
                    switch (num % 2) {
                      case (0):
                        numType = 'even';
                        break;
                      default:
                        numType = 'odd';
                    }
                  } else {
                    numType = '';
                    Fluttertoast.showToast(
                      msg: 'Number is null',
                    );
                  }
                  onClickShow();
                } catch (e) {
                  Fluttertoast.showToast(
                    msg: e.toString(),
                  );
                }
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
    try {} catch (e) {
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
            const SizedBox(
              height: 10,
            ),
            Text('Your Entered number is $numType '),
          ]),
        ),
      ),
    );
  }
}
