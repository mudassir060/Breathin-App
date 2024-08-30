import 'package:breathin_app/services/snak_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class ResetPasswordViewModel extends BaseViewModel {
  TextEditingController emailCtrl = TextEditingController();

  // final _navigationService = locator<NavigationService>();
  Future forgotPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailCtrl.text.trim())
          .then((value) => null);
      showSuccessSnack("Check your email");
    } on FirebaseAuthException catch (err) {
      showSuccessSnack(err.message.toString());
    } catch (err) {
      showSuccessSnack(err.toString());
    }
  }

  // void navigateToLogin() {
  //   _navigationService.navigateToLoginView();
  // }

  void navigateToSignupView() {
    // _navigationService.navigateToSignupView();
  }
}
