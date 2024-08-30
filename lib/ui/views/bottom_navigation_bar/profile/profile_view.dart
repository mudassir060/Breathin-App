import 'package:breathin_app/ui/views/bottom_navigation_bar/profile/widgets/button_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';
import 'widgets/profile_header.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const ProfileHeader(),
        SettingsOption(
          title: "Privacy Policy",
          onPress: () {},
        ),
        SettingsOption(
          title: "Feedback",
          onPress: () {},
        ),
        SettingsOption(
          title: "Log out",
          onPress: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Are you sure?'),
                  content: const Text('Do you want to logout from the app'),
                  actions: [
                    TextButton(
                      onPressed: viewModel.logout,
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('No'),
                    )
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }

  @override
  void onViewModelReady(ProfileViewModel viewModel) {
    // viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
