import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_app/utils/utils.dart';

import '../api/api_calls.dart';
import '../screens/add_students.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => APICalls(),
        ),
        ChangeNotifierProvider(
          create: (context) => Utils(),
        ),
      ],
      child: MaterialApp(
        title: 'My Students',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
        routes: {
          '/addNewDoc': (context) => const AddNewStudents(),
        },
      ),
    );
  }
}
