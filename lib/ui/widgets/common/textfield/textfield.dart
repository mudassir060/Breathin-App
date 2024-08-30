import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import 'textfield_model.dart';

class Textfield extends StackedView<TextfieldModel> {
  final Widget? sufixIcon;
  final bool obscureText;
  final String? title;
  final String? hintText;
  final InputBorder? border;
  final int? maxLines;
  final TextEditingController? ctrl;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Color? borderColor;
  final Color? fillColor;

  const Textfield({
    super.key,
    this.title,
    this.ctrl,
    this.obscureText = false,
    this.sufixIcon,
    this.border,
    this.maxLines,
    this.keyboardType,
    this.onChanged,
    this.hintText,
    this.borderColor,
    this.fillColor,
  });

  @override
  Widget builder(
    BuildContext context,
    TextfieldModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 4),
            child: Text(
              title ?? "",
              style: const TextStyle(
                fontSize: 14,
                color: kcDarkGreyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: fillColor ?? kcVeryLightGrey,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: borderColor ?? Colors.transparent,
            ),
          ),
          child: TextFormField(
            obscureText: obscureText,
            controller: ctrl,
            maxLines: maxLines ?? 1,
            keyboardType: keyboardType,
            onChanged: (value) {
              if (onChanged != null) {
                onChanged!(value);
              }
            },
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: kcMediumGrey),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
              border: border ?? InputBorder.none,
              suffixIcon: sufixIcon,
            ),
          ),
        ),
      ],
    );
  }

  @override
  TextfieldModel viewModelBuilder(BuildContext context) => TextfieldModel();
}
