import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text,
    required this.title,
  });

  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(title),
          Text(text),
        ],
      ),
    );
  }
}
