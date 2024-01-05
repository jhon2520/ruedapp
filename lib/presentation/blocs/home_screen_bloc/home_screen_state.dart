part of 'home_screen_bloc.dart';



class HomeScreenState extends Equatable{

  final String? counterKM;

  const HomeScreenState({this.counterKM});

  HomeScreenState copyWith({
    String? counterKM
  }){
    print("se hizo el copuWtihc $counterKM");
    return HomeScreenState(
      counterKM:  counterKM ?? this.counterKM
    );
  }
  
  @override
  List<Object?> get props => [
    counterKM
  ]; 

}
