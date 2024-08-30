import 'package:breathin_app/ui/views/bottom_navigation_bar/explore/explore_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomNavigationBarViewModel extends BaseViewModel {
  // final _navigationService = locator<NavigationService>();

  int selectedIndex = 0;
  bool isSelectedIndex(i) => i == selectedIndex;
  onViewModelReady() {}

  void updateIndex(index) {
    selectedIndex = index;
    notifyListeners();
  }

  Widget getScreen() {
    switch (selectedIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const ExploreView();
      case 2:
        return const ProfileView();
      default:
        return Container();
    }
  }
}
