import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ruedapp/config/app_colors/app_colors.dart';
import 'package:ruedapp/presentation/utils/index.dart';

class TextWidget extends StatelessWidget {

  final String label;
  final FontSizesEnum fontSizesEnum;
  final Color? fontColor;

  const TextWidget(this.label, {
    super.key,
    required this.fontSizesEnum,
    this.fontColor,
    });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      label,
      style: GoogleFonts.poppins(
        fontSize: fontSizesEnum.size,
        color: fontColor ?? AppColors.darkBlueMainColor
      ),
    );
  }
}
