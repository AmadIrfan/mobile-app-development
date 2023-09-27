import 'package:assignment3/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';

class CustomWidget4 extends StatefulWidget {
  const CustomWidget4({super.key});

  @override
  State<CustomWidget4> createState() => _CustomWidget4State();
}

class _CustomWidget4State extends State<CustomWidget4> {
  bool _switchValue = false;
  int? _selectVal;
  bool checkbox1 = false;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomExpansionTile(
          leading: const CircleAvatar(
            child: Text('6'),
          ),
          text: const Text('Switch'),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Switch',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Switch(
                  value: _switchValue,
                  onChanged: (v) {
                    setState(
                      () {
                        _switchValue = v;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        CustomExpansionTile(
          leading: const CircleAvatar(
            child: Text('7'),
          ),
          text: const Text('Radio'),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Radio 1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Radio(
                  value: 1,
                  onChanged: (v) {
                    setState(
                      () {
                        _selectVal = v;
                      },
                    );
                  },
                  groupValue: _selectVal,
                ),
                const Text(
                  'Radio 2',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Radio(
                  value: 2,
                  onChanged: (v) {
                    setState(
                      () {
                        _selectVal = v;
                      },
                    );
                  },
                  groupValue: _selectVal,
                ),
              ],
            ),
          ],
        ),
        CustomExpansionTile(
          leading: const CircleAvatar(
            child: Text('8'),
          ),
          text: const Text('CheckBox'),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Checkbox 1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Checkbox(
                  value: checkbox1,
                  onChanged: (v) {
                    setState(
                      () {
                        checkbox1 = v!;
                      },
                    );
                  },
                ),
                const Text(
                  'Radio 2',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Checkbox(
                  value: checkbox2,
                  onChanged: (v) {
                    setState(
                      () {
                        checkbox2 = v!;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            newMethod();
          },
          child: const Text('Show Bottom Sheet'),
        ),
      ],
    );
  }

  dynamic newMethod() => showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 200,
          alignment: Alignment.center,
          child: const Text('Modal Bottom Sheet'),
        ),
      );
}
