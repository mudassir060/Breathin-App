import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/services/share_preferances.dart';
import 'package:breathin_app/ui/views/authentication/login/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();

  UserModel? get userData => _authService.userData;
  bool showNotification = false;

  changeShowNotification(e) {
    showNotification = e;
    notifyListeners();
  }

  logout() async {
    await FirebaseAuth.instance.signOut().then((value) async {
      await sharedPrefClear();
      _navigationService.clearStackAndShowView(const LoginView());
    });
  }
}
