import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'button_model.dart';

class Button extends StackedView<ButtonModel> {
  final String title;
  final String? icon;
  final VoidCallback onTap;
  final bool loading;
  final Color buttonColor;
  final Color textColor;
  final bool borderStatus;
  final double borderRadius;
  final double? width;
  final double? height;
  final double? padding;

  const Button({
    super.key,
    required this.title,
    this.icon,
    required this.onTap,
    this.buttonColor = kcPrimaryColor,
    this.textColor = kcDarkGreyColor,
    this.borderStatus = false,
    this.borderRadius = 10,
    this.loading = false,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget builder(
    BuildContext context,
    ButtonModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderStatus
                ? BorderSide(color: textColor, width: 1)
                : BorderSide.none,
          ),
          minimumSize: Size(width ?? double.infinity, height ?? 50),
        ),
        child: loading
            ? const CupertinoActivityIndicator()
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    Image.asset(
                      icon ?? "",
                      height: 25,
                    ),
                    horizontalSpaceSmall
                  ],
                  Text(
                    title,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  @override
  ButtonModel viewModelBuilder(BuildContext context) => ButtonModel();
}
