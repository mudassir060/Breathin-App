import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/app/app.router.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LanguageSelectionViewModel extends BaseViewModel {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();

  UserModel? get userData => _authService.userData;
  bool isSelected(e) => selectedLanguage == e;
  String selectedLanguage = "";

  final List<Map<String, String>> flagLanguageMap = [
    {
      'flag': '🇺🇸',
      'language': 'English',
    },
    {
      'flag': '🇫🇷',
      'language': 'French',
    },
    {
      'flag': '🇪🇸',
      'language': 'Spanish',
    },
  ];

  back() {
    _navigationService.back();
  }

  selectLanguage(String e) {
    selectedLanguage = e;
    notifyListeners();
  }

  updateLanguage() async {
    await firestore
        .collection("users")
        .doc(userData!.uID)
        .update({"language": selectedLanguage});
    _navigationService.replaceWithBottomNavigationBarView();
  }
}
