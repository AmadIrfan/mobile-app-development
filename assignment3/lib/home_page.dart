import 'package:assignment3/windows2/file.dart';
import 'package:assignment3/windows2/file3.dart';

import 'package:flutter/material.dart';
import '../windows1/ont_to_20.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List list = [
    'Container',
    'Text',
    'Image',
    'Icon',
    'IconButton',
    'FloatingActionButton',
    'TextButton',
    'ElevatedButton',
    'OutlineButton',
    'Checkbox',
    'Switch',
    'Radio',
    'Slider',
    'TextField',
    'AppBar',
    'TabBar',
    'BottomNavigationBar',
    'Drawer',
    'Card',
    'ListTile',
    'GridView',
    'ListView',
    'Stack',
    'Row',
    'Column',
    'Expanded',
    'Flexible',
    'Align',
    'RichText',
    'TextField',
    'DropdownButton',
    'PopupMenuButton',
    'Divider',
    'SizedBox',
    'Spacer',
    'LinearProgressIndicator',
    'CircularProgressIndicator',
    'Slider',
    'Tooltip',
    'SnackBar',
    'AlertDialog',
    "Simple Dialog",
    'BottomSheet',
    'PopupMenu',
    'GridTile',
    'GridTileBar',
    'ExpansionPanel',
    'ExpansionTile',
    'Card',
    'Chip',
    'CircleAvatar',
    'PageView',
    'InkWell',
    'ListView.builder',
    'GridView.builder',
    'TextFormField',
    'TabBarView',
    'Dismissible',
    'ReorderableListView',
    'Table',
    'AnimatedContainer',
    'AnimatedOpacity',
    'Positioned',
    "ClipRRect"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Center(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(list[index]),
                  ),
                );
              },
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Mobile Application Development'),
          actions: [
            // DropdownButton(
            //     items: [
            //       DropdownMenuItem(
            //         child: Text('item 1'),
            //       ),
            //       DropdownMenuItem(
            //         child: Text('item 2'),
            //       ),
            //     ],
            //     onChanged: (v) {
            //       print(v);
            //     }),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('item 1'),
                ),
                PopupMenuItem(
                  child: Text('item 2'),
                ),
              ],
            ),
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            // indicator: BoxDecoration(color: Colors.black54),

            tabs: [
              Tab(
                icon: Icon(Icons.abc),
                child: Text("Tab 1"),
              ),
              Tab(
                icon: Icon(Icons.abc),
                child: Text("Tab 2"),
              ),
              Tab(
                icon: Icon(Icons.abc),
                child: Text("Tab 3"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            First20(),
            MyFiles(),
            File3(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (v) {},
          items: const [
            BottomNavigationBarItem(
              label: 'ABC',
              icon: Icon(Icons.abc),
            ),
            BottomNavigationBarItem(
              label: 'DEF',
              icon: Icon(Icons.abc),
            ),
            BottomNavigationBarItem(
              label: 'GHI',
              icon: Icon(Icons.abc),
            ),
          ],
        ),
      ),
    );
  }
}
