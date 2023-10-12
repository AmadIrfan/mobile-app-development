import 'package:flutter/material.dart';

import '../windows1/ont_to_20.dart';
import '../windows2/file2.dart';

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
  List _item = const [
    First20(),
    File2(),
  ];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const Drawer(
          child: Center(child: Text('this is a Drawer')
              // ListView.builder(
              //   itemCount: list.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Card(
              //       child: ListTile(
              //         leading: CircleAvatar(
              //           child: Text('${index + 1}'),
              //         ),
              //         title: Text(list[index]),
              //       ),
              //     );
              //   },
              // ),
              ),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('MAD'),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('item 1'),
                ),
                const PopupMenuItem(
                  child: Text('item 2'),
                ),
                // const PopupMenuItem(
                //   child: Text('item 2'),
                // ),
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
              // Tab(
              //   icon: Icon(Icons.abc),
              //   child: Text("Tab 3"),
              // ),
            ],
          ),
        ),
        body: _item[_page]
        //  const TabBarView(
        //   children: [
        //     First20(),
        //     MyFiles(),
        //     // File3(),
        //   ],
        // ),
        ,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (v) {
            setState(() {
              _page = v;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: 'page 1',
              icon: Icon(Icons.pages),
            ),
            BottomNavigationBarItem(
              label: 'page 2',
              icon: Icon(Icons.pages),
            ),
            // BottomNavigationBarItem(
            //   label: 'GHI',
            //   icon: Icon(Icons.abc),
            // ),
          ],
        ),
      ),
    );
  }
}
