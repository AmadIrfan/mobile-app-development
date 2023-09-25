import 'package:assignment3/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';

class CustomWidgets1 extends StatefulWidget {
  const CustomWidgets1({super.key});

  @override
  State<CustomWidgets1> createState() => _CustomWidgets1State();
}

class _CustomWidgets1State extends State<CustomWidgets1> {
  final List<String> _items = [
    'Apple',
    'book',
    'bag',
    'pen',
    'register',
    'laptop',
    'mobile',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomExpansionTile(
          leading: const CircleAvatar(
            child: Text('1'),
          ),
          text: const Text(' ReOrderable List'),
          children: [
            SizedBox(
              height: 300,
              child: ReorderableListView.builder(
                itemCount: _items.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex = newIndex - 1;
                    }
                    final item = _items.removeAt(oldIndex);
                    _items.insert(newIndex, item);
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(2),
                    key: ValueKey(_items[index]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        _items[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
