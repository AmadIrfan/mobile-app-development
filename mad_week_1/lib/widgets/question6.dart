import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question6 extends StatefulWidget {
  const Question6({super.key});

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  final TextEditingController _controller = TextEditingController();
  String palindrome = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
            text:
                'Ask the user for a string and print out whether this string is a palindrome or not. A palindrome is a string that reads the same forwards and backwards.'),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _controller,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            label: Text('Number'),
            border: OutlineInputBorder(),
          ),
          onChanged: (v) {
            try {
              if (v.isNotEmpty) {
                String rev = '';
                for (int i = v.length - 1; i >= 0; i--) {
                  rev += v[i];
                }
                if (rev == v) {
                  palindrome = 'palindrome';
                } else {
                  palindrome = 'Not palindrome';
                }
              } else {
                palindrome = '';
              }
              setState(() {});
            } catch (e) {
              Fluttertoast.showToast(
                msg: e.toString(),
              );
            }
          },
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            'Your enter \' ${_controller.text} \' Word is \' $palindrome  \' ',
            style: const TextStyle(
              fontSize: 23,
            ),
          ),
        ),
      ],
    );
  }
}
