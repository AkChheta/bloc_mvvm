import 'package:auto_route/auto_route.dart';
import 'package:bloc_mvvm/core/api/network_api_services.dart';
import 'package:bloc_mvvm/core/routes/app_router.gr.dart';
import 'package:bloc_mvvm/core/widgets/internet/internet_widget.dart';
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/dash_board_page.dart';
import 'package:bloc_mvvm/features/dashBoard/presentation/pages/first_apge.dart';
import 'package:bloc_mvvm/features/home/data/repositories/home_repositories.dart';
import 'package:bloc_mvvm/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc(HomeRepositoriesImpl())..add(HomeFetchDataEvent())
      // ..add(HomeUserDetailsEvent())
      ,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeUserDetailsEvent());
                  // HomeBloc(HomeRepositoriesImpl()).add(HomeUserDetailsEvent());
                },
                child: Icon(Icons.home))
          ],
        ),
        body: InkWell(
          onTap: () {
            context.router.replace(DashBordRoute());
            // context.router.pop();
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              print("1::::::::::::::::::::::::::::::::");

              if (state is HomeLoadingState) {
                print("2::::::::::::::::::::::::::::::::");
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is HomeErrorState) {
                print("3::::::::::::::::::::::::::::::::");
                if (state.message == 'No Internet') {
                  print("4::::::::::::::::::::::::::::::::");
                  print("${state.message == 'No Internet'}");
                  return InternetWidget(onTap: () {
                    print("kdnvjnv");
                    BlocProvider.of<HomeBloc>(context)
                        .add(HomeFetchDataEvent());
                    // HomeBloc(HomeRepositoriesImpl()).add(HomeFetchDataEvent());
                  });
                } else {
                  print("5::::::::::::::::::::::::::::::::");
                  return Center(
                    child: Text(state.message),
                  );
                }
              } else if (state is HomeResposeState) {
                print("6::::::::::::::::::::::::::::::::");
                final userList = state.usersList;

                print("user:::${userList.length}");
                return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(userList[index].email.toString()),
                      subtitle: Text(
                          '${userList[index].firstName} ${userList[index].lastName}'),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(userList[index].avatar.toString()),
                      ),
                    );
                  },
                );

                // second api calling
              } else if (state is HomeUserDetailsState) {
                final userDetailsList = state.usersdetails;

                return ListView.builder(
                  itemCount: userDetailsList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(userDetailsList[index].email.toString()),
                      subtitle: Text(
                          '${userDetailsList[index].name} ${userDetailsList[index].id.toString()}'),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            userDetailsList[index].avatar.toString()),
                      ),
                    );
                  },
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
