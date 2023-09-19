import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question3 extends StatefulWidget {
  const Question3({super.key});

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  List<int> item = [];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
            text:
                'Take a list, say for example this one: a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] and write a program that prints out all the elements of the list that are less than 5'),
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
                  item.clear();
                  List itm = _controller.text.split(' ');
                  for (var i in itm) {
                    if (int.parse(i) < 5) {
                      item.add(int.parse(i));
                    }
                  }
                  onClickShow();
                } catch (e) {
                  Fluttertoast.showToast(
                    msg: e.toString(),
                  );
                }
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void onClickShow() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Result',
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          height: 150,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: Text(
                item.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
