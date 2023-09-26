import 'package:flutter/material.dart';
import '../widgets/custom_expansion_tile.dart';

class CustomWidgets2 extends StatefulWidget {
  const CustomWidgets2({super.key});

  @override
  State<CustomWidgets2> createState() => _CustomWidgets2State();
}

class _CustomWidgets2State extends State<CustomWidgets2> {
  final List<String> _items = [
    'Apple',
    'book',
    'bag',
    'pen',
    'register',
    'laptop',
    'mobile',
  ];
  Color caughtColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomExpansionTile(
            leading: const CircleAvatar(
              child: Text('1'),
            ),
            text: const Text(' ReOrderable List'),
            children: [
              SizedBox(
                height: 330,
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
                      margin: const EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
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
          CustomExpansionTile(
            leading: const CircleAvatar(
              child: Text('2'),
            ),
            text: const Text('Drag able widgets'),
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Draggable(
                            feedback: Container(
                              width: 100,
                              height: 100,
                              color: Colors.red,
                              child: const Center(
                                child: Text(
                                  'Box...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                            data: Colors.red,
                            onDraggableCanceled: (velocity, offset) {},
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.all(10),
                              color: Colors.red,
                              child: const Center(
                                child: Text('box'),
                              ),
                            ),
                          ),
                          Draggable(
                            feedback: Container(
                              width: 100,
                              height: 100,
                              color: Colors.green,
                              child: const Center(
                                child: Text(
                                  'Box...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                            data: Colors.green,
                            onDraggableCanceled: (velocity, offset) {},
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.all(10),
                              color: Colors.green,
                              child: const Center(
                                child: Text('box'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DragTarget(
                      onAccept: (Color color) {
                        caughtColor = color;
                      },
                      builder: (
                        BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,
                      ) {
                        return Container(
                          width: 150,
                          height: 150,
                          color: accepted.isEmpty
                              ? caughtColor
                              : Colors.grey.shade200,
                          child: const Center(
                            child: Text('Drag here'),
                          ),
                        );
                      },
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
