import 'package:breathin_app/gen/assets.gen.dart';
import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:breathin_app/ui/widgets/common/button/button.dart';
import 'package:breathin_app/ui/widgets/common/text_button/text_widget.dart';
import 'package:breathin_app/ui/widgets/common/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
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
            image: AssetImage(Assets.images.authBackground.path),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
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
                verticalSpaceSmall,
                const TextWidget(
                  text: "Please enter your details to continue",
                  fontSize: 16,
                  textColor: Colors.white,
                ),
                verticalSpaceLarge,
                Textfield(
                  title: "Email",
                  ctrl: viewModel.emailCtrl,
                  hintText: "example@gmail.com",
                  borderColor: Colors.white,
                  fillColor: Colors.white.withOpacity(0.2),
                ),
                verticalSpaceSmall,
                Textfield(
                  title: "Password",
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
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: viewModel.navigateToReset,
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: viewModel.toggleAcceptTerms,
                      icon: Icon(
                        viewModel.acceptTerms
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                        color: Colors.black,
                      ),
                    ),
                    const TextWidget(
                      text: 'I accept the terms and privacy policy',
                      textColor: Colors.white,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                Button(
                  title: "Continue",
                  onTap: viewModel.loginNow,
                  borderStatus: false,
                  loading: viewModel.isBusy,
                  height: 50,
                ),
                verticalSpaceSmall,
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('or', style: TextStyle(color: Colors.white)),
                    ),
                    Expanded(child: Divider(color: Colors.white)),
                  ],
                ),
                verticalSpaceMedium,
                Button(
                  title: "Sign in with Google",
                  onTap: viewModel.signInWithGoogle,
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                  borderStatus: false,
                  height: 50,
                  icon: Assets.icons.googleLogo.path,
                ),
                verticalSpaceSmall,
                Button(
                  title: "Sign in with Apple",
                  onTap: viewModel.signInWithApple,
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                  borderStatus: false,
                  height: 50,
                  icon: Assets.icons.apple.path,
                ),
                verticalSpaceMedium,
                TextButton(
                  onPressed: viewModel.navigateToSignup,
                  child: const Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(color: kcVeryLightGrey, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
