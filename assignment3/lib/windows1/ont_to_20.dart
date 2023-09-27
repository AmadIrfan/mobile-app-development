import 'package:assignment3/windows1/widgets_13_16.dart';
import 'package:assignment3/windows1/widgets_1_4.dart';
import 'package:assignment3/windows1/widgets_5_8.dart';
import 'package:assignment3/windows1/widgets_9_12.dart';
import 'package:flutter/material.dart';

class First20 extends StatefulWidget {
  const First20({super.key});

  @override
  State<First20> createState() => _First20State();
}

class _First20State extends State<First20> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomWidgets1(),
          CustomWidgets2(),
          CustomWidgets3(),
          CustomWidget4(),
        ],
      ),
    );
  }
}
