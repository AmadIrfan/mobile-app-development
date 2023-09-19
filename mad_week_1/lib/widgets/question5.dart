import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mad_week_1/Res/custom_text.dart';

class Question5 extends StatefulWidget {
  const Question5({super.key});

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  List _item = [];
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomText(
            text:
                'Take two lists, for example: a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.'),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _controller1,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            label: Text('Number'),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _controller2,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            label: Text('Number'),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
          onPressed: () {
            try {
              List list1 = _controller1.text.split(' ');
              List list2 = _controller2.text.split(' ');
              _item = findSameElements(list1, list2);
              if (_item.isEmpty) {
                Fluttertoast.showToast(
                  msg: 'No item Match',
                );
              }
              setState(() {});
            } catch (e) {
              Fluttertoast.showToast(
                msg: e.toString(),
              );
            }
          },
          label: const Text('Search'),
          icon: const Icon(
            Icons.search,
          ),
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
                  fontSize: 23,
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

  List findSameElements(List list1, List list2) {
    List commonList = [];
    for (var e in list1) {
      if (list2.contains(e) && !commonList.contains(e)) {
        commonList.add(e);
      }
    }
    return commonList;
  }
}
