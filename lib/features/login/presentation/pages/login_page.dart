import 'package:auto_route/auto_route.dart';
import 'package:bloc_mvvm/core/preferenses/local_prefs.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  final Function(bool?) onResultl;
  const LoginPage({super.key, required this.onResultl});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  login() {
    // sucessfull login after call this function

    LocalPrefs().setLocalPrefBool(key: 'user_login', value: true);
    widget.onResultl.call(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              login();
            },
            child: Text('Protected Route')),
      ),
    );
  }
}
