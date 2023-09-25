import 'package:bloc_mvvm/core/api/network_api_services.dart';
import 'package:bloc_mvvm/features/home/data/repositories/home_repositories.dart';
import 'package:bloc_mvvm/features/home/presentation/bloc/home_bloc.dart';
import 'package:bloc_mvvm/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProviderInit extends StatelessWidget {
  final Widget child;
  const ProviderInit({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SplashBloc(),
        ),
        BlocProvider(
          create: (_) => HomeBloc(HomeRepositoriesImpl()),
        ),
      ],
      child: child,
    );
  }
}




// class _MyAppState extends State<MyApp> {
//   final _appRouter = getIt<AppRouter>();
 

//   @override
//   Widget build(BuildContext context) {
    
//     return ProviderInit(

//       child: MaterialApp.router(
//         debugShowCheckedModeBanner: false,
//         title: '',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         routerDelegate: _appRouter.delegate(),
//         routeInformationParser: _appRouter.defaultRouteParser(),
//       ),
//     );
//   }
// }