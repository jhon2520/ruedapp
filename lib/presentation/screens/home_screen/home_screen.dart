import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ruedapp/config/index.dart' 
  show AppColors, AppStrings;
import 'package:ruedapp/presentation/share/index.dart'
  show HomeDrawerWidget, IconButtonWidget, TextWidget;
import 'package:ruedapp/presentation/utils/index.dart' 
  show FontSizesEnum;

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

    return Container(
      // height: size.height * 0.2,
      color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.green,
                height: size.height * 0.1,
                child: Text(
                  "000000",
                  style: GoogleFonts.poppins(
                      fontSize: 56, color: AppColors.darkPurpleMainColor),
                ),
              ),
              Container(
                // height: double.infinity,
                color: Colors.yellow,
                child: Text("km", style: GoogleFonts.poppins(),)),
            ],
          ),
          IconButtonWidget(onPressed: () {}, iconData: Icons.mode_edit_outline_rounded)
        ],
      ),
    );
  }
}
