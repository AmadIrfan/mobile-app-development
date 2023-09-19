import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mad_week_1/widgets/drawer.dart';
import 'package:mad_week_1/widgets/question10.dart';
import '../widgets/question1.dart';
import '../widgets/question2.dart';
import '../widgets/question3.dart';
import '../widgets/question4.dart';
import '../widgets/question5.dart';
import '../widgets/question7.dart';
import '../widgets/question6.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _items = const [
    Question1(),
    Question2(),
    Question3(),
    Question4(),
    Question5(),
    Question6(),
    Question7(),
    Question10(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: MyDrawer(),
      ),
      appBar: AppBar(
        leading: const SizedBox(),

        actions: [
          Builder(builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const CircleAvatar(
                child: Text('AI'),
              ),
            );
          }),
          Container(
            padding: const EdgeInsets.all(4),
          ),
        ],
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Mobile app development',
          style: GoogleFonts.zillaSlab(
            fontSize: 28,
            color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
        // centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ExpansionTile(
              title: Text('Task ${index + 1}'),
              children: [
                _items[index],
              ],
            ),
          );
        },
      ),
    );
  }
}
