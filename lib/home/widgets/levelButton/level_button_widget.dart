import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({Key? key, required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

   final dynamic config = {
    "Fácil": {
      "style": AppTextStyles.levelButtonFacil,
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil
    },
    "Médio": {
      "style": AppTextStyles.levelButtonMedio,
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio
    },
    "Difícil": {
      "style": AppTextStyles.levelButtonDificil,
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil
    },
    "Perito": {
      "style": AppTextStyles.levelButtonPerito,
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito
    }
  };

  TextStyle get style => config[label]!['style']!;
  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
          border: Border.fromBorderSide(
              BorderSide(color: borderColor))),
      child: Text(
        label,
        style: style,
      ),
    );
  }
}
