import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {

  final void Function()? onPressed;
  final IconData iconData;

  const IconButtonWidget({super.key,
    required this.onPressed,
    required this.iconData

  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Icon(iconData));
  }
}