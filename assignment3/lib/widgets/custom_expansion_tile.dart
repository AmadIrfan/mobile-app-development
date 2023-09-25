// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    Key? key,
    required this.text,
    this.leading,
    required this.children,
    this.bgColor = Colors.blueAccent,
  }) : super(key: key);

  final Text text;
  final Widget? leading;
  final List<Widget> children;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      child: ExpansionTile(
        title: text,
        leading: leading,
        children: children,
      ),
    );
  }
}
