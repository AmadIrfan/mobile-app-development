import 'package:assignment3/windows2/file.dart';
import 'package:assignment3/windows2/file1.dart';
import 'package:flutter/material.dart';
import 'windows1/widgets_9_12.dart';
import '../windows1/ont_to_20.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawer(
          child: Center(
            child: Text(
              'This is Drawer.',
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Mobile Application Development'),
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
            CustomWidgets3(),
          ],
        ),
      ),
    );
  }
}
