import 'package:assignment3/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';

class CustomWidgets3 extends StatefulWidget {
  const CustomWidgets3({super.key});

  @override
  State<CustomWidgets3> createState() => _CustomWidgets3State();
}

class _CustomWidgets3State extends State<CustomWidgets3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomExpansionTile(
          leading: const CircleAvatar(
            child: Text('5'),
          ),
          text: const Text('Buttons'),
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutLined Button'),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text('Material Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.abc),
            ),
          ],
        ),
      ],
    );
  }
}
