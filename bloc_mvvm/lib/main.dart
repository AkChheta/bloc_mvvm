import 'package:bloc_mvvm/core/init/provider_init.dart';
// import 'package:bloc_mvvm/core/routes/app_router.dart';
import 'package:bloc_mvvm/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // AppRouter appRouter = AppRouter();
    return ProviderInit(
      child: MaterialApp(
        title: 'Flutter mvvm',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashPage(),

        // routerConfig: appRouter.config(),
        // routerDelegate: appRouter.delegate(),
        // routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
