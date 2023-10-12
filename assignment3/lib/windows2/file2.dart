import 'package:flutter/material.dart';

class File2 extends StatefulWidget {
  const File2({super.key});

  @override
  State<File2> createState() => _File2State();
}

class _File2State extends State<File2> {
  DateTime? _dateTime;
  TimeOfDay? _time;
  int _label = 0;
  List ls = List.generate(3, (index) => index);
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

  Color caughtColor = Colors.green;

  String? selectedValue = 'Option 1';
  final double _top = 10;
  double _h = 0;
  double _w = 0;
  double opacity = 0;
  double _btnTop = 60;
  double _posTop = 10;

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
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/images.jpeg',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Filter Chip',
            style: TextStyle(
              fontSize: _value,
              fontWeight: FontWeight.w800,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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

          Card(
            child: ListTile(
              title: RichText(
                text: TextSpan(
                  text: 'This is  ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Rich ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' Text!'),
                  ],
                ),
              ),
            ),
          ),

          const Text('Stack and Position'),
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.2,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: _top,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Stack',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _posTop,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Positioned',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _btnTop,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_posTop == 40) {
                          _posTop = 10;
                          _btnTop = 60;
                        } else {
                          _posTop = 40;
                          _btnTop = 100;
                        }
                      });
                    },
                    child: const Text('change Position'),
                  ),
                ),
              ],
            ),
          ),
          const Text('Animated container or Animated Opacity'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (opacity == 1) {
                  _h = 0;
                  _w = 0;
                  opacity = 0;
                  return;
                }
                _h = 150;
                _w = 150;
                opacity = 1;
              });
            },
            child: const Text('Show Animation'),
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedContainer(
            margin: const EdgeInsets.all(10),
            duration: const Duration(seconds: 3),
            height: _h,
            width: _w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 3),
              opacity: opacity,
              child: const Text(
                'built in Animation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('text field'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Form and  text Form field'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('List View'),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: ls.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: ValueKey(ls[index]),
                  onDismissed: (v) {
                    ls.remove(ls[index]);
                    setState(() {});
                  },
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                  ),
                  child: Card(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text('$index'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          DropdownButton<String>(
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          // Table( )
          const Text('Flexible'),
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
            ],
          ),
          const Text('Table'),
          Table(
            children: const [
              TableRow(
                children: [
                  Text('Cell 1'),
                  Text('Cell 2'),
                  Text('Cell 3'),
                ],
              ),
              TableRow(
                children: [
                  Text('Cell 4'),
                  Text('Cell 5'),
                  Text('Cell 6'),
                ],
              ),
            ],
          ),
          Badge(
            label: Text(_label.toString()),
            child: IconButton(
              onPressed: () {
                _label += 1;
                setState(() {});
              },
              icon: const Icon(Icons.shopping_bag),
            ),
          ),
          TextButton(
            onPressed: () async {
              _time = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());
              setState(() {});
            },
            child: Text(_time == null ? 'Pick Time' : 'Picked Time is $_time'),
          ),
          TextButton(
            onPressed: () async {
              _dateTime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              setState(() {});
            },
            child: Text(
                _dateTime == null ? 'Pick Date' : 'Picked Date is :$_dateTime'),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 5,
            width: 100,
            child: LinearProgressIndicator(),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                  title: Text('this is dialog'),
                  content: Text('this is dialog'),
                ),
              );
            },
            child: const Text('Dialog'),
          ),

          const Tooltip(
            message: "this is tool tip",
            child: Card(
              child: ListTile(
                title: Text('tool tip'),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const SimpleDialog(
                  title: Text('Simple Dialog'),
                  children: [
                    Text('this is the body.'),
                  ],
                ),
              );
            },
            child: const Text('Simple Dialog'),
          ),
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.green,
                  content: Text('this is Gesture Detector + SnackBar'),
                ),
              );
            },
            child: const Card(
              child: ListTile(
                title: Text('this is inkwell'),
              ),
            ),
          ),
          const Text(' ReOrderable List'),
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
          const Text('Drag able widgets'),
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
                          color: Colors.amber,
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
                        data: Colors.orange,
                        onDraggableCanceled: (velocity, offset) {},
                        child: Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.all(10),
                          color: Colors.orange,
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
                      color:
                          accepted.isEmpty ? caughtColor : Colors.grey.shade200,
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
    );
  }
}
