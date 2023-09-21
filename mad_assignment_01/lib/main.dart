import 'package:flutter/material.dart';

import '../windows/home_page.dart';
import '../res/colors.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: blueLight,
        ),
        iconTheme: IconThemeData(
          color: Colors.amber.shade400,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          outlineBorder: BorderSide(
            color: blue,
            width: 2,
          ),
        ),
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
