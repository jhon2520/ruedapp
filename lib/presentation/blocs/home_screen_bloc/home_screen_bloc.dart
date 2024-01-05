import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const HomeScreenState()) {
    on<ChangeCounterKMEvent>((event, emit) {
      emit(state.copyWith(
        counterKM: event.newCounter
      ));
    });
  }
}
