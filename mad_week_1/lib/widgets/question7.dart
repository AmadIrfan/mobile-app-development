import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question7 extends StatefulWidget {
  const Question7({super.key});

  @override
  State<Question7> createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  final List<int> _item = [];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
            text:
                'Let’s say you are given a list saved in a variable: a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.'),
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
                  _item.clear();
                  List itm = _controller.text.split(' ');
                  for (var i in itm) {
                    if (int.parse(i) % 2 == 0) {
                      _item.add(int.parse(i));
                    }
                  }
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
}
