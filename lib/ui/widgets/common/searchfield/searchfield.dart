import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import 'searchfield_model.dart';

class Searchfield extends StackedView<SearchfieldModel> {
  final String searchText;
  const Searchfield(this.searchText, {super.key});

  @override
  Widget builder(
    BuildContext context,
    SearchfieldModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 25),
      child: Container(
          height: 40,
          width: screenWidth(context),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: kcPrimaryColor),
          child: Row(
            children: [
              horizontalSpaceSmall,
              const Icon(
                Icons.search,
                size: 18,
                color: kcDarkGreyColor,
              ),
              horizontalSpaceTiny,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: TextFormField(
                    controller: viewModel.searchController,
                    decoration: InputDecoration(
                      hintText: searchText,
                      hintStyle: const TextStyle(fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      border: InputBorder.none,
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  @override
  SearchfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchfieldModel();
}
