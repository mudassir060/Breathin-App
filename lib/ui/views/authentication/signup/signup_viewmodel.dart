import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/app/app.router.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/services/snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController cPasswordCtrl = TextEditingController();

  bool isPasswordShow = true;

  setPasswordShow() {
    isPasswordShow = !isPasswordShow;
    notifyListeners();
  }

  Future<void> signUpNow() async {
    setBusy(true);
    String userName = userNameCtrl.text.trim();
    String email = emailCtrl.text.trim();
    String password = passwordCtrl.text.trim();
    if (email.isNotEmpty &&
        password.length > 7 &&
        userName.isNotEmpty &&
        (password == cPasswordCtrl.text)) {
      var res = await _authService.signUp(UserModel(
          userName: userName,
          email: email,
          password: password,
          profile: "https://picsum.photos/200",
          joinDate: DateTime.now()));
      if (res == "SignUp Successfully") {
        _navigationService.replaceWithLanguageSelectionView();
      }
    } else {
      showErrorSnack("pleas enter correct data");
    }
    setBusy(false);
  }

  void navigateToReset() {
    // _navigationService.navigateToResetPasswordView();
  }

  void replaceWithLoginView() {
    _navigationService.replaceWithLoginView();
  }
}
