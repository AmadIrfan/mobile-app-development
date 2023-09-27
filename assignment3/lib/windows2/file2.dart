import 'package:flutter/material.dart';

class File2 extends StatefulWidget {
  const File2({super.key});

  @override
  State<File2> createState() => _File2State();
}

class _File2State extends State<File2> {
  DateTime? _dateTime;
  TimeOfDay? _time;
  int _label = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Badge(
            label: Text(_label.toString()),
            child: IconButton(
              onPressed: () {
                _label += 1;
                setState(() {});
              },
              icon: const Icon(Icons.shopping_bag),
            ),
          ),
          TextButton(
            onPressed: () async {
              _time = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());
              setState(() {});
            },
            child: Text(_time == null ? 'Pick Time' : 'Picked Time is $_time'),
          ),
          TextButton(
            onPressed: () async {
              _dateTime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              setState(() {});
            },
            child: Text(
                _dateTime == null ? 'Pick Date' : 'Picked Date is :$_dateTime'),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 10,
            width: 200,
            child: LinearProgressIndicator(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
