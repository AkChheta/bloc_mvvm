part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeResposeState extends HomeState {
  final List<UserDataModel> usersList;
  const HomeResposeState(this.usersList);

  @override
  List<Object> get props => [usersList];
}

class HomeErrorState extends HomeState {
  final String message;
  const HomeErrorState(this.message);
  @override
  List<Object> get props => [message];
}
