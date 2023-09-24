import 'package:flutter/material.dart';

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double displayWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}


// 
// use
// 
              // height: displayHeight(context) * 0.2 + 40,
                                // width: displayWidth(context) / 2 - 48,
