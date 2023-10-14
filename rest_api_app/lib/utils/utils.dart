import 'package:flutter/material.dart';

class Utils with ChangeNotifier {
  void showSnackBar(
    BuildContext ctx,
    String message, {
    Color bgColor = Colors.green,
  }) {
    ScaffoldMessenger.of(ctx).hideCurrentSnackBar();
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(10),
        backgroundColor: bgColor,
        behavior: SnackBarBehavior.floating,
        content: Text(message),
      ),
    );
  }
}
