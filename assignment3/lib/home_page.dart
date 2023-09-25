import 'package:assignment3/windows/widgets_1.dart';
import 'package:flutter/material.dart';

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
            CustomWidgets1(),
            Icon(Icons.abc),
            Icon(Icons.abc),
          ],
        ),
      ),
    );
  }
}
