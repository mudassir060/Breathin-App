import 'package:breathin_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../bottom_navigation_bar_viewmodel.dart';

class SearchBar extends ViewModelWidget<BottomNavigationBarViewModel> {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, BottomNavigationBarViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(13),
          hintText: 'Search here',
          prefixIcon: Image.asset(
            Assets.icons.search.path,
          ),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
