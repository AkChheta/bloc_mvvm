import 'package:auto_route/auto_route.dart';
import 'package:bloc_mvvm/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashBordPage extends StatelessWidget {
  const DashBordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        FirstNavigatorRoute(),
        SecondsRoute(),
      ],
      builder: (context, child) {
        final tabeRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.red,
                elevation: 0.0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                currentIndex: tabeRouter.activeIndex,
                selectedLabelStyle: TextStyle(fontSize: 13),
                unselectedLabelStyle: TextStyle(fontSize: 13),

                // showSelectedLabels: false,
                // showUnselectedLabels: false,
                onTap: (value) {
                  tabeRouter.setActiveIndex(value);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.first_page), label: 'First'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.last_page), label: 'Second'),
                ]),
          ),
        );
      },
    );
  }
}
