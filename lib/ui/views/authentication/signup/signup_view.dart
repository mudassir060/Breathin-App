import 'package:breathin_app/gen/assets.gen.dart';
import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:breathin_app/ui/widgets/common/button/button.dart';
import 'package:breathin_app/ui/widgets/common/text_button/text_widget.dart';
import 'package:breathin_app/ui/widgets/common/textfield/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.spleshCover.path),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceLarge,
                    const TextWidget(
                      text: "Welcome to Breathin",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 8),
                    const TextWidget(
                      text: "Please enter your details to sign up",
                      fontSize: 16,
                      textColor: Colors.white,
                    ),
                    verticalSpaceLarge,
                    Textfield(
                      title: "User Name",
                      ctrl: viewModel.userNameCtrl,
                      hintText: "mudassir",
                      borderColor: Colors.white,
                      fillColor: Colors.white.withOpacity(0.2),
                    ),
                    verticalSpaceSmall,
                    Textfield(
                      title: "Email",
                      ctrl: viewModel.emailCtrl,
                      hintText: "example@gmail.com",
                      borderColor: Colors.white,
                      fillColor: Colors.white.withOpacity(0.2),
                    ),
                    verticalSpaceSmall,
                    Textfield(
                      title: "Confirm Password",
                      ctrl: viewModel.passwordCtrl,
                      sufixIcon: GestureDetector(
                        onTap: viewModel.setPasswordShow,
                        child: Icon(
                          viewModel.isPasswordShow
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                        ),
                      ),
                      obscureText: !viewModel.isPasswordShow,
                      hintText: "must be 8 characters",
                      borderColor: Colors.white,
                      fillColor: Colors.white.withOpacity(0.2),
                    ),
                    verticalSpaceSmall,
                    Textfield(
                      title: "Password",
                      ctrl: viewModel.cPasswordCtrl,
                      sufixIcon: GestureDetector(
                        onTap: viewModel.setPasswordShow,
                        child: Icon(
                          viewModel.isPasswordShow
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                        ),
                      ),
                      obscureText: !viewModel.isPasswordShow,
                      hintText: "must be 8 characters",
                      borderColor: Colors.white,
                      fillColor: Colors.white.withOpacity(0.2),
                    ),
                    verticalSpaceLarge,
                    Button(
                      title: "Sign up",
                      onTap: viewModel.signUpNow,
                      borderStatus: false,
                      height: 50,
                    ),
                    verticalSpaceSmall,
                    const Row(
                      children: [
                        Expanded(child: Divider(color: Colors.white)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child:
                              Text('or', style: TextStyle(color: Colors.white)),
                        ),
                        Expanded(child: Divider(color: Colors.white)),
                      ],
                    ),
                    verticalSpaceSmall,
                    TextButton(
                      onPressed: viewModel.replaceWithLoginView,
                      child: const Text(
                        "Already have an account? Sign in",
                        style: TextStyle(color: kcVeryLightGrey, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (viewModel.isBusy)
              const Center(
                child: CupertinoActivityIndicator(),
              ),
          ],
        ),
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
