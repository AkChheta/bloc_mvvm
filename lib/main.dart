import 'package:bloc_mvvm/core/init/provider_init.dart';
import 'package:bloc_mvvm/core/preferenses/local_prefs.dart';
import 'package:bloc_mvvm/core/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalPrefs().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ProviderInit(
      child: MaterialApp.router(
        title: 'Flutter mvvm',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        routerConfig: appRouter.config(),
        // routerDelegate: appRouter.delegate(),
        // routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
