import 'package:flutter/material.dart';

class CustomSnackBar {
  static SnackBar buildErrorSnackBar(String message) {
    return SnackBar(
      duration: const Duration(milliseconds: 400),
      backgroundColor: Colors.redAccent,
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    );
  }
}
