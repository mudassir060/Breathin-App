import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../language_selection_viewmodel.dart';

class LanguageOption extends ViewModelWidget<LanguageSelectionViewModel> {
  final String flag;
  final String language;
  final bool isSelected;

  const LanguageOption({
    Key? key,
    required this.flag,
    required this.language,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LanguageSelectionViewModel viewModel,
  ) {
    return GestureDetector(
      onTap: () {
        viewModel.selectLanguage(language);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[200] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Colors.black : Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Text(
              flag,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                language,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: Colors.black,
              ),
          ],
        ),
      ),
    );
  }
}
