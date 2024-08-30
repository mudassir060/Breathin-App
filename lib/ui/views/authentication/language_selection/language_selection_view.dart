import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/views/authentication/language_selection/widgets/language_option.dart';
import 'package:breathin_app/ui/widgets/common/button/button.dart';
import 'package:breathin_app/ui/widgets/common/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'language_selection_viewmodel.dart';

class LanguageSelectionView extends StackedView<LanguageSelectionViewModel> {
  const LanguageSelectionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LanguageSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: viewModel.back,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Choose the language",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Please select your language, you can always change your preference in settings.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Textfield(
              hintText: "Search",
              ctrl: TextEditingController(),
              borderColor: Colors.grey,
              fillColor: Colors.white,
            ),
            const SizedBox(height: 20),
            ...viewModel.flagLanguageMap.map((entry) {
              return LanguageOption(
                flag: entry['flag']!,
                language: entry['language']!,
                isSelected: viewModel.selectedLanguage == entry['language'],
              );
            }).toList(),
            const SizedBox(height: 20),
            Button(
              title: "Continue",
              onTap: viewModel.updateLanguage,
              borderStatus: false,
              buttonColor: kcPrimaryColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  @override
  LanguageSelectionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LanguageSelectionViewModel();
}
