import 'package:breathin_app/gen/assets.gen.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/widgets/search_bar.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:stacked/stacked.dart';
import 'package:breathin_app/ui/common/app_colors.dart';
import 'bottom_navigation_bar_viewmodel.dart';
import 'widgets/top_bar.dart';

class BottomNavigationBarView
    extends StackedView<BottomNavigationBarViewModel> {
  const BottomNavigationBarView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BottomNavigationBarViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  const TopBar(),
                  const SearchBar(),
                  viewModel.getScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: kcPrimaryColor,
      //   shape: const CircleBorder(),
      //   onPressed: viewModel.navigateToPostAddCategoriesView,
      //   child: const Icon(
      //     Icons.add,
      //     color: kcVeryLightGrey,
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navButton(
              selected: viewModel.isSelectedIndex(0),
              icon: Assets.icons.home.path,
              title: "Home",
              onPress: () {
                viewModel.updateIndex(0);
              },
            ),
            navButton(
              selected: viewModel.isSelectedIndex(1),
              icon: Assets.icons.discover.path,
              title: "Explore",
              onPress: () {
                viewModel.updateIndex(1);
              },
            ),
            navButton(
              selected: viewModel.isSelectedIndex(2),
              icon: Assets.icons.profile.path,
              title: "Profile",
              onPress: () {
                viewModel.updateIndex(2);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  BottomNavigationBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavigationBarViewModel();
}

Widget navButton({selected, required String icon, title, onPress}) {
  return GestureDetector(
    onTap: () {
      onPress();
    },
    child: Column(
      children: [
        Image.asset(
          icon,
          height: 25,
          color: selected
              ? kcDarkGreyColor.withOpacity(0.8)
              : kcDarkGreyColor.withOpacity(0.4),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: selected ? FontWeight.bold : FontWeight.w500,
            color: selected
                ? kcDarkGreyColor.withOpacity(0.8)
                : kcDarkGreyColor.withOpacity(0.4),
          ),
        ),
      ],
    ),
  );
}
