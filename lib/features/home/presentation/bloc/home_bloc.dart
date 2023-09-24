import 'package:bloc/bloc.dart';
import 'package:bloc_mvvm/features/home/data/models/home_model.dart';
import 'package:bloc_mvvm/features/home/data/repositories/home_repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._repositories) : super(HomeInitialState()) {
    on<HomeEvent>(_fetchUsersData);
  }
  final HomeRepositories _repositories;

  void _fetchUsersData(HomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());

    try {
      // var data;
      final response = await _repositories.getuserList();
      // .onError((error, stackTrace) => data);
      emit(HomeResposeState(response));
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }
}
