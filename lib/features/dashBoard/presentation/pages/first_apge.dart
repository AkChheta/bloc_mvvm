import 'package:auto_route/auto_route.dart';
import 'package:bloc_mvvm/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FirstPage extends StatelessWidget {
  final String? email;
  final String? image;
  const FirstPage({super.key, this.email, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(email.toString()),
            // CircleAvatar(
            //   backgroundImage: NetworkImage(image.toString()),
            // ),
            ElevatedButton(
                onPressed: () {
                  context.router.push(DetailRoute(
                      image:
                          'https://tse1.mm.bing.net/th?id=OIP.lzhjDctAvQfXcgFQg4pHTwHaEz&pid=Api&P=0&w=300&h=300'));
                },
                child: const Text('Detail Page')),
          ],
        ),
      ),
    );
  }
}
