import 'package:flutter/material.dart';

import 'package:ruedapp/config/index.dart' 
  show AppStrings;
import 'package:ruedapp/presentation/screens/index.dart' 
  show AlertsScreen, HomeScreen;

class ItemHomeDrawerModel{

  final String itemLabel;
  final Icon itemIcon;
  final Widget screen;


  const ItemHomeDrawerModel({
    required this.itemLabel,
    required this.itemIcon,
    required this.screen,
  });

  static List<ItemHomeDrawerModel> getItems(){
    return [
      const ItemHomeDrawerModel(
        itemLabel: AppStrings.homeItemDrawerLaber, 
        itemIcon: Icon(Icons.home),
        screen: HomeScreen()
      ),
      const ItemHomeDrawerModel(
        itemLabel: AppStrings.alertsItemDrawerLaber, 
        itemIcon: Icon(Icons.warning_amber),
        screen: AlertsScreen()
      ),
    ];
  }
  
}