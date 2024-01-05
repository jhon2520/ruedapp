import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ruedapp/config/index.dart' 
  show AppColors, AppStrings;
import 'package:ruedapp/presentation/blocs/index.dart';
import 'package:ruedapp/presentation/share/index.dart'
  show HomeDrawerWidget, IconButtonWidget, TextWidget;
import 'package:ruedapp/presentation/utils/index.dart' 
  show FontSizesEnum, NumberFormatsUtils;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawerWidget(),
      appBar: AppBar(
          title: const TextWidget(AppStrings.appName,
              fontSizesEnum: FontSizesEnum.h1)),
      body: const Center(child: CounterKMWidget()),
    );
  }
}

class CounterKMWidget extends StatelessWidget {
  const CounterKMWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    print("rebuild");

    return Container(
      // color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Builder(
                builder: (context) {

                  return TextWidget(
                    context.select((HomeScreenBloc value) => value.state.counterKM ?? "0"),
                    fontSizesEnum: FontSizesEnum.bigTitle,
                  
                  );
                }
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  // height: double.infinity,
                  // color: Colors.yellow,
                  child: TextWidget("km", fontSizesEnum: FontSizesEnum.h3,)),
              ),
            ],
          ),
          IconButtonWidget(onPressed: () {
            print("cambio");
            context.read<HomeScreenBloc>().add(ChangeCounterKMEvent("2001"));
          }, iconData: Icons.mode_edit_outline_rounded)
        ],
      ),
    );
  }
}
