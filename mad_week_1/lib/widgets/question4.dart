import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question4 extends StatefulWidget {
  const Question4({super.key});

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  List<int> _item = [];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
            text:
                'Create a program that asks the user for a number and then prints out a list of all the divisors of that number.'),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Number'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                try {
                  _item = findDivisors(int.parse(_controller.text));
                  setState(() {});
                } catch (e) {
                  Fluttertoast.showToast(
                    msg: e.toString(),
                  );
                }
              },
              icon: const Icon(
                Icons.search,
              ),
            )
          ],
        ),
        Container(
          height: 200,
          width: double.infinity,
          alignment: Alignment.center,
          //   child: Expanded(
          child: ListView.builder(
            itemCount: _item.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(
                _item[index].toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              );
            },
          ),
          //   ),
        ),
      ],
    );
  }

  List<int> findDivisors(int number) {
    List<int> divisors = [];
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        divisors.add(i);
      }
    }
    return divisors;
  }
}
