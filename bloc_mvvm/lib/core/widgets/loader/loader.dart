import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? const Center(
            child: CircularProgressIndicator(
            color: Colors.black,
          ))
        : const CupertinoActivityIndicator(
            radius: 15.0,
          );
  }
}
