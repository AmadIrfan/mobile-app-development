 import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question10 extends StatefulWidget {
  const Question10({super.key});

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {
  bool prime = false;
  String type = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CustomText(
              text:
                  'Ask the user for a number and determine whether the number is prime or not. Do it using a function'),
          const SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Number'),
              border: OutlineInputBorder(),
            ),
            onChanged: (v) {
              try {
                if (v.isNotEmpty) {
                  int numb = int.parse(v);
                  prime = isPrime(numb);
                  if (prime) {
                    type = '$v is a prime number';
                  } else {
                    type = '$v is not a prime number.';
                  }
                } else {
                  type = '';
                  Fluttertoast.showToast(
                    msg: 'Number is null',
                  );
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
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Your Entered number is $type '),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    if (number <= 3) {
      return true;
    }
    if (number % 2 == 0 || number % 3 == 0) {
      return false;
    }

    for (int i = 5; i * i <= number; i += 6) {
      if (number % i == 0 || number % (i + 2) == 0) {
        return false;
      }
    }

    return true;
  }
}
