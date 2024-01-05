part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}

class ChangeCounterKMEvent extends HomeScreenEvent{
  final String newCounter;
  ChangeCounterKMEvent(this.newCounter);
}
