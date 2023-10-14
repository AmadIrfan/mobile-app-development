// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_app/api/api_calls.dart';
import 'package:rest_api_app/models/models.dart';
import 'package:rest_api_app/utils/utils.dart';

import '../widgets/row.dart';

enum Actions {
  delete,
  edit,
}

class CustomTile extends StatefulWidget {
  const CustomTile({super.key, required this.index});
  final int index;

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    Student stu = Provider.of<Student>(context);
    final utilsProvider = Provider.of<Utils>(context, listen: false);
    return Dismissible(
      onDismissed: (v) async {
        String message = await Provider.of<APICalls>(context, listen: false)
            .deleteStudents(stu.sId.toString());
        utilsProvider.showSnackBar(
          context,
          message,
        );
      },
      key: ValueKey(widget.index),
      background: Container(
        color: Colors.red,
      ),
      child: Card(
        child: ExpansionTile(
          leading: CircleAvatar(
            child: Text('${widget.index + 1}'),
          ),
          subtitle: Text(
            stu.registrationNo.toString(),
          ),
          title: Text(
            (stu.name).toString(),
          ),
          trailing: PopupMenuButton<Actions>(
            onSelected: (v) async {
              if (v == Actions.delete) {
                String message =
                    await Provider.of<APICalls>(context, listen: false)
                        .deleteStudents(stu.sId.toString());
                utilsProvider.showSnackBar(
                  context,
                  message,
                );
                setState(() {});
              } else if (v == Actions.edit) {
                Navigator.pushNamed(context, '/addNewDoc', arguments: {
                  'student': stu,
                  'id': stu.sId,
                });
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: Actions.delete,
                child: Text('Delete'),
              ),
              PopupMenuItem(
                value: Actions.edit,
                child: Text('Edit'),
              )
            ],
          ),
          children: [
            CustomRow(text: stu.fatherName.toString(), title: 'Father Name : '),
            CustomRow(text: stu.contact.toString(), title: 'Contact : '),
            CustomRow(
              text: DateFormat.yMMMEd().format(
                DateTime.parse(
                  stu.dob.toString(),
                ),
              ),
              title: 'Date of Birth : ',
            ),
          ],
        ),
      ),
    );
  }
}
