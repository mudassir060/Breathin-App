import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/profile/profile_viewmodel.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';

class ProfileHeader extends ViewModelWidget<ProfileViewModel> {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ProfileViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(
              viewModel.userData?.profile ?? "",
            ),
          ),
          horizontalSpaceMedium,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.userData?.userName ?? "",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceSmall,
              Text(
                viewModel.userData?.email ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
