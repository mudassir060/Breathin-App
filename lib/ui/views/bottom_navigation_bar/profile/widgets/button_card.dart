import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/profile/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SettingsOption extends ViewModelWidget<ProfileViewModel> {
  final String title;
  final Function onPress;

  const SettingsOption({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(
    BuildContext context,
    ProfileViewModel viewModel,
  ) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: getResponsiveMediumFontSize(context) + 6,
                  color: kcMediumGrey,
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: kcPrimaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
