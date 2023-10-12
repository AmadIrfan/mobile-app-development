import 'package:assignment3/windows2/file1.dart';
import 'package:assignment3/windows2/file2.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatefulWidget {
  const MyFiles({super.key});

  @override
  State<MyFiles> createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          File11(),
          File2(),
        ],
      ),
    );
  }
}
