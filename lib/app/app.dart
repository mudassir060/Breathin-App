import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:breathin_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:breathin_app/ui/views/authentication/login/login_view.dart';
import 'package:breathin_app/ui/views/authentication/reset_password/reset_password_view.dart';
import 'package:breathin_app/ui/views/authentication/signup/signup_view.dart';
import 'package:breathin_app/ui/views/authentication/startup/startup_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/bottom_navigation_bar_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/explore/explore_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/profile/profile_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:breathin_app/ui/views/authentication/language_selection/language_selection_view.dart';
import 'package:breathin_app/services/home_service.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/music_player/music_player_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ResetPasswordView),
    MaterialRoute(page: BottomNavigationBarView),
    MaterialRoute(page: ExploreView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: LanguageSelectionView),
    MaterialRoute(page: MusicPlayerView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: HomeService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
