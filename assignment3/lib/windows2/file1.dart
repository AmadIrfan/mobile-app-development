import 'package:flutter/material.dart';

class File11 extends StatefulWidget {
  const File11({super.key});

  @override
  State<File11> createState() => _File11State();
}

class _File11State extends State<File11> {
  final List<String> _items = [
    'Apple',
    'book',
    'bag',
    'pen',
    'register',
    'laptop',
    'mobile',
  ];
  double _value = 20;
  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Images',
            style: TextStyle(
              fontSize: _value,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Image(
            height: 200,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/download.jpeg',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Chip',
            style: TextStyle(
              fontSize: _value,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ..._items
                  .map(
                    (e) => Chip(
                      avatar: const CircleAvatar(),
                      padding: const EdgeInsets.all(5),
                      label: Text(e),
                    ),
                  )
                  .toList()
            ],
          ),
          Text(
            'Filter Chip',
            style: TextStyle(
              fontSize: _value,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ..._items.map(
                (e) => FilterChip(
                  padding: const EdgeInsets.all(5),
                  label: Text(e),
                  selected: _list.contains(e),
                  onSelected: (v) {
                    if (_list.contains(e)) {
                      _list.remove(e);
                    } else {
                      _list.add(e);
                    }
                    setState(() {});
                  },
                ),
              )
            ],
          ),
          Text(
            'Divider',
            style: TextStyle(
              fontSize: _value,
              fontWeight: FontWeight.w800,
            ),
          ),
          Divider(
            height: _value,
          ),
          Text(
            'Slider',
            style: TextStyle(
              fontSize: _value,
              fontWeight: FontWeight.w800,
            ),
          ),
          Slider(
            min: 10,
            max: 30,
            value: _value,
            onChanged: (v) {
              setState(
                () {
                  _value = v;
                },
              );
            },
          ),
          
        ],
      ),
    );
  }
}
