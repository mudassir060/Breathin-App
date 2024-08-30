import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/widgets/common/app_bar/appbar_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyAppBar extends StackedView<MyAppBarModel>
    implements PreferredSizeWidget {
  final String title;
  final Widget? action;
  const MyAppBar({required this.title, this.action, super.key});

  @override
  Widget builder(
    BuildContext context,
    MyAppBarModel viewModel,
    Widget? child,
  ) {
    return AppBar(
      leading: Container(),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
            color: kcDarkGreyColor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      actions: [
        if (action != null)
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: action!,
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  MyAppBarModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyAppBarModel();
}
