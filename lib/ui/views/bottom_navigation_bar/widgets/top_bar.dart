import 'package:breathin_app/gen/assets.gen.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../bottom_navigation_bar_viewmodel.dart';

class TopBar extends ViewModelWidget<BottomNavigationBarViewModel> {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, BottomNavigationBarViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Breathin',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Image.asset(
              Assets.icons.message.path,
              height: 35,
            ),
            horizontalSpaceSmall,
            Image.asset(
              Assets.icons.notification.path,
              height: 35,
            ),
          ],
        ),
      ],
    );
  }
}
