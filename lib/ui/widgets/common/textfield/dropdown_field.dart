import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:breathin_app/ui/common/app_colors.dart';

import 'textfield_model.dart';

class DropdownableTextField extends StackedView<TextfieldModel> {
  final String title;
  final List<dynamic> items; // List of items for the dropdown
  final dynamic selectedValue; // Currently selected value
  final void Function(dynamic) onChanged; // Callback for when the value changes
  const DropdownableTextField({
    super.key,
    required this.title,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget builder(
    BuildContext context,
    TextfieldModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(title),
        ),
        Container(
          decoration: BoxDecoration(
            color: kcVeryLightGrey,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1.0),
          ),
          child: DropdownButtonFormField<dynamic>(
            value: selectedValue,
            items: items.map((dynamic value) {
              return DropdownMenuItem<dynamic>(
                value: value,
                child: Text(
                  value.toString().split('.').last,
                  style: const TextStyle(fontSize: 14),
                ),
              );
            }).toList(),
            onChanged: onChanged,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
              border: InputBorder.none,
              alignLabelWithHint: true,
            ),
          ),
        ),
      ],
    );
  }

  @override
  TextfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextfieldModel();
}
