import 'package:flutter/material.dart';

class CLoginButton extends StatelessWidget {
  final String title;
  final String? image;
  final Color buttonColor;
  final Color textColor;
  final bool showImage;
  final VoidCallback onTap;

  const CLoginButton(
      {super.key,
      required this.title,
      this.image,
      required this.buttonColor,
      required this.textColor,
      required this.showImage,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2.2,
        child: Container(
          // height: 50.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showImage == true)
                Container(
                    // height: 24.h,
                    // width: 24.h,
                    // child: SvgPicture.asset(image.toString())
                    ),
              SizedBox(
                  // width: 10.w,
                  ),
              Text(
                title,
                // style:
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CBackButton extends StatelessWidget {
  const CBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30.h,
      // width: 30.h,
      padding: EdgeInsets.only(left: 7),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Icon(
        Icons.arrow_back_ios,
        // size: 20.sp,
      ),
    );
  }
}
