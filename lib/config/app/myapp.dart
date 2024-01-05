import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruedapp/presentation/blocs/home_screen_bloc/home_screen_bloc.dart';

import 'package:ruedapp/presentation/screens/index.dart' 
  show HomeScreen;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenBloc>(
          create: (context) => HomeScreenBloc(),
          child: Container(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true
        ),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomeScreen()
      ),
    );
  }
}