import 'package:flutter/material.dart';

import 'package:ruedapp/config/index.dart' 
  show AppColors, AppLayout;
import 'package:ruedapp/presentation/share/index.dart' 
  show IconButtonWidget, TextWidget;
import 'package:ruedapp/presentation/utils/index.dart' 
  show FontSizesEnum;





class CardAlertScreenWidget extends StatelessWidget {

  final String title;

  const CardAlertScreenWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [


        Container(
          margin: const EdgeInsets.all(AppLayout.marginl),
          padding: const EdgeInsets.symmetric(horizontal: AppLayout.paddingM),
          decoration: _cardDecoration(),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 60,
          child: Row(
            children: [
              TextWidget(title, fontSizesEnum: FontSizesEnum.h2),
              const Spacer(),
              IconButtonWidget(onPressed:() {}, iconData: Icons.delete_outline_outlined)
            ],
          ),
        ),
                Positioned(
          right: 10,
          bottom: 0,
          child: _AlertIndicator()),
      ],
    );
  }

  BoxDecoration _cardDecoration() => const BoxDecoration(
    color: AppColors.lightBlueMainColor,
    borderRadius: BorderRadius.all(
      Radius.circular(AppLayout.borderRadius)
    )
  );
}

class _AlertIndicator extends StatelessWidget {
  const _AlertIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center, 
      width: 20,
      height: 20,
      child: TextWidget("1", fontSizesEnum: FontSizesEnum.h3, fontColor: AppColors.whiteColor,),
      decoration: BoxDecoration(
      color: AppColors.alertIndicatorColor,
        shape: BoxShape.circle
      ),
    );
  }
}