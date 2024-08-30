import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import 'text_model.dart';

class TextWidget extends StackedView<TextWidgetModel> {
  final String text;
  final Color textColor;
  final Color boxColor;
  final double fontSize;
  final FontWeight fontWeight;
  const TextWidget(
      {super.key,
      required this.text,
      this.textColor = kcPrimaryColor,
      this.boxColor = Colors.transparent,
      this.fontSize = 12,
      this.fontWeight = FontWeight.bold});

  @override
  Widget builder(
    BuildContext context,
    TextWidgetModel viewModel,
    Widget? child,
  ) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  @override
  TextWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextWidgetModel();
}
