import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'button_model.dart';

class GridIconButton extends StackedView<ButtonModel> {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final Color? color;
  final double? iconHeight;
  const GridIconButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.color,
    this.iconHeight,
  });

  @override
  Widget builder(
    BuildContext context,
    ButtonModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: color ?? kcVeryLightGrey,
                // border: Border.all(color: kcDarkGreyColor, width: 1),
              ),
              child: Image.asset(
                  width: iconHeight ?? 70, icon, color: kcDarkGreyColor),
            ),
            verticalSpaceSmall,
            Text(
              title,
              style: const TextStyle(
                  color: kcDarkGreyColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ButtonModel viewModelBuilder(BuildContext context) => ButtonModel();
}
