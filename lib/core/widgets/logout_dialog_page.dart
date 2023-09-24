import 'package:bloc_mvvm/core/styles/styles.dart';
import 'package:flutter/material.dart';

class LogoutDialogPage extends StatelessWidget {
  const LogoutDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
//   Image

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.35,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 0.3, blurRadius: 8, color: Colors.grey),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Session expired',
                        style: headerTextStyle(),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Your session expired. Please login again.',
                        style: subTitle2TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          child: Text(
                            'Ok',
                            style: titleSemiBoldStyle(),
                          ),
                          onPressed: () async {
                            // Clear shared preference
                            // final prefs = await SharedPreferences.getInstance();
                            // await prefs.clear();

                            //Goto login page
                            // Navigater
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
