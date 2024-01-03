import 'package:flutter/material.dart';
import 'package:ruedapp/config/app_colors/index.dart';

import 'package:ruedapp/domain/models/index.dart';
import 'package:ruedapp/presentation/share/index.dart';
import 'package:ruedapp/presentation/utils/index.dart';

class HomeDrawerWidget extends StatelessWidget {
  HomeDrawerWidget({super.key});

  final List<ItemHomeDrawerModel> listItem = ItemHomeDrawerModel.getItems();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: AppColors.lightBlueMainColor),
            child: TextWidget("RuedaApp",fontSizesEnum: FontSizesEnum.h1),
          ),
          ...List.generate(listItem.length, (index) {
            final ItemHomeDrawerModel item = listItem[index];

            return ListTile(
              leading: item.itemIcon,
              title: TextWidget(item.itemLabel, fontSizesEnum: FontSizesEnum.h3,),
              onTap:()=>goToScreen(context, item.screen),
            );
          })
        ],
      ),
    );
  }
  void goToScreen(BuildContext context, Widget screen){
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen,));
  }

}
