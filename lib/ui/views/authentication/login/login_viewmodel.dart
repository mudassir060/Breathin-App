import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/app/app.router.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/services/snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();

  UserModel? get userData => _authService.userData;

  TextEditingController emailCtrl =
      TextEditingController(text: "abc@gmail.com");
  TextEditingController passwordCtrl = TextEditingController(text: "qwerty12");

  bool isPasswordShow = true;
  bool acceptTerms = false;

  setPasswordShow() {
    isPasswordShow = !isPasswordShow;
    notifyListeners();
  }

  toggleAcceptTerms() {
    acceptTerms = !acceptTerms;
    notifyListeners();
  }

  Future<void> loginNow() async {
    setBusy(true);
    String email = emailCtrl.text.trim();
    String password = passwordCtrl.text.trim();
    if (acceptTerms) {
      if (email.isNotEmpty && password.length > 7) {
        var res = await _authService.loginNow(email, password);
        if (res == "login successfully") {
          replaceWithBottomNavigationBarView();
        }
      } else {
        showErrorSnack("Enter correct email password");
      }
    } else {
      showErrorSnack("Accept terms and privacy policy");
    }
    setBusy(false);
  }

  void navigateToSignup() {
    _navigationService.replaceWithSignupView();
  }

  void navigateToReset() {
    _navigationService.navigateToResetPasswordView();
  }

  void replaceWithBottomNavigationBarView() {
    _navigationService.replaceWithBottomNavigationBarView();
  }

  signInWithGoogle() {}
  signInWithApple() {}
}
