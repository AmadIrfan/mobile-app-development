import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import '../screens/custom_title.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key, required this.snapshot});

  final AsyncSnapshot<Students> snapshot;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: snapshot.data!.student!.length,
      itemBuilder: (BuildContext context, int index) {
        return ChangeNotifierProvider<Student>(
          create: (context) => snapshot.data!.student![index],
          child: CustomTile(
            index: index,
          ),
        );
      },
    );
  }
}
