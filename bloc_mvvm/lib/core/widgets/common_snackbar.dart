import 'package:flutter/material.dart';

void showSnackBar({
  required String message,
  required BuildContext context,
  Duration? duration,
}) {
  final snack = SnackBar(
    content: SizedBox(
      child: Row(
        children: [
          const Spacer(),
          Text(
            message,
            style: const TextStyle(fontSize: 11, color: Color(0xff343A3F)),
          ),
          const Spacer(),
        ],
      ),
    ),
    duration: duration ?? const Duration(milliseconds: 400),
    backgroundColor: const Color(0xffF2F3E4),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(26)),
    ),
    elevation: 2,
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 48),
    margin: const EdgeInsets.only(bottom: 25, left: 42, right: 42),
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snack);
}


 void showSuccessMessage(String message, context) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showfailedMessage(String message, context) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }