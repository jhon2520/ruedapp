import 'package:flutter/material.dart';
import 'package:ruedapp/presentation/screens/home_screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen()
    );
  }
}