import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/app/app.router.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/models/breathin.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/services/home_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final _homeService = locator<HomeService>();

  UserModel? get userData => _authService.userData;
  List<BreathinModel> get breathin => _homeService.breathin;

  @override
  List<ListenableServiceMixin> get listenableServices => [_homeService];

  onViewModelReady() async {}

  isFavourite(List favourite) {
    return favourite.contains(userData?.uID ?? "");
  }

  navigateToMusicPlayerView(int selectedIndex) {
    _navigationService.navigateToMusicPlayerView(
      selectedIndex: selectedIndex,
      breathin: breathin,
    );
  }

  favourite(String docId, isFavourit) async {
    if (isFavourit) {
      await _homeService.removeToFavourite(docId);
    } else {
      await _homeService.addToFavourite(docId);
    }
  }
  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }

  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //     variant: BottomSheetType.notice,
  //     title: ksHomeBottomSheetTitle,
  //     description: ksHomeBottomSheetDescription,
  //   );
  // }
}
