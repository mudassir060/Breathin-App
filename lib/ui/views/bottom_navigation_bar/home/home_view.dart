import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/widgets/exercise_list.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/widgets/favorites_section.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/widgets/featured_section.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:breathin_app/ui/common/app_colors.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (viewModel) => viewModel.onViewModelReady(),
      builder: (context, viewModel, child) {
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavoritesSection(),
            FeaturedSection(),
            verticalSpaceMedium,
            ExerciseList(),
          ],
        );
      },
    );
  }
}

Widget heading(String title, String actionText) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: kcDarkGreyColor,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            actionText,
            style: const TextStyle(color: kcPrimaryColor),
          ),
        ),
      ],
    ),
  );
}
