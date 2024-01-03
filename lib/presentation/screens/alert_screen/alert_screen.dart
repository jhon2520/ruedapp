import 'package:flutter/material.dart';

import 'package:ruedapp/config/index.dart' 
  show AppLayout, AppStrings;
import 'package:ruedapp/domain/models/index.dart' 
  show AlertCardModel;
import 'package:ruedapp/presentation/screens/alert_screen/widgets/index.dart' 
  show CardAlertScreenWidget;
import 'package:ruedapp/presentation/share/index.dart' 
  show HomeDrawerWidget, TextWidget;
import 'package:ruedapp/presentation/utils/index.dart' 
  show FontSizesEnum;


class AlertsScreen extends StatelessWidget {

const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawerWidget(),
      appBar: AppBar(
        title: const TextWidget(AppStrings.alertsItemDrawerLaber, 
        fontSizesEnum: FontSizesEnum.h1),
      ),
      floatingActionButton: 
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        
      },),
      body: _BodyAlertScreen()
     
   );
  }
}

class _BodyAlertScreen extends StatelessWidget {

  final List<AlertCardModel> alerts = [
    AlertCardModel(title: "cambio aceite"),
    AlertCardModel(title: "cambio cadena"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),
    AlertCardModel(title: "revisar frenos"),

  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppLayout.paddingXXl),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
    
            ...List.generate(alerts.length, (index) {
    
              final AlertCardModel  item = alerts[index];
    
              return CardAlertScreenWidget(
                title: item.title
              );
            })
            
          ],
        ),
      ),
    );
  }
}