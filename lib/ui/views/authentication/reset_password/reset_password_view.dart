import 'package:breathin_app/ui/widgets/common/text_button/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/button/button.dart';
import '../../../widgets/common/textfield/textfield.dart';
import 'reset_password_viewmodel.dart';

class ResetPasswordView extends StackedView<ResetPasswordViewModel> {
  const ResetPasswordView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpaceMedium,
          verticalSpaceSmall,
          const TextWidget(text: "Reset Password"),
          verticalSpaceLarge,
          Textfield(
            title: "Email address",
            ctrl: viewModel.emailCtrl,
          ),
          verticalSpaceLarge,
          Button(
            title: "Send",
            onTap: viewModel.forgotPassword,
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an Account?",
                style: TextStyle(color: kcVeryLightGrey, fontSize: 16),
              ),
              TextButton(
                  onPressed: viewModel.navigateToSignupView,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: kcVeryLightGrey, fontSize: 16),
                  ))
            ],
          )
        ],
      ),
    ));
  }

  @override
  ResetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordViewModel();
}
