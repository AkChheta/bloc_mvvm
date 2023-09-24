// import 'package:auto_route/auto_route.dart';
// import 'package:bloc_mvvm/core/routes/app_router.gr.dart';
import 'package:bloc_mvvm/features/home/presentation/pages/home_page.dart';
import 'package:bloc_mvvm/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// @RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   BlocProvider.of<SplashBloc>(context).add(SplashInitialEvent());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SplashBloc()..add(SplashInitialEvent()),
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if (state is SplashPageLoadesState) {
              // context.router.push(const HomeRoute());

              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              });
            }
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1520962922320-2038eebab146?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMjA3fDB8MXxzZWFyY2h8NHx8c291cmNlc3x8MHx8fHwxNjIwODQyMjgy&ixlib=rb-1.2.1&q=80&w=1080'),
                      fit: BoxFit.cover)),
            );
          },
        ),
      ),
    );
  }
}
