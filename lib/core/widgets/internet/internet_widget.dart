import 'package:bloc_mvvm/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class InternetWidget extends StatefulWidget {
  final VoidCallback onTap;
  const InternetWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  State<InternetWidget> createState() => _InternetWidgetState();
}

class _InternetWidgetState extends State<InternetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.cloud_off,
            color: AppColor.red,
            size: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(child: Text('check you network')),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: widget.onTap,
            child: Container(
              height: 70,
              width: 100,
              color: AppColor.blue,
              child: Text('Retry'),
            ),
          )
        ],
      ),
    );
  }
}
