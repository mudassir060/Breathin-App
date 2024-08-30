// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:breathin_app/models/breathin.dart' as _i13;
import 'package:breathin_app/ui/views/authentication/language_selection/language_selection_view.dart'
    as _i10;
import 'package:breathin_app/ui/views/authentication/login/login_view.dart'
    as _i4;
import 'package:breathin_app/ui/views/authentication/reset_password/reset_password_view.dart'
    as _i5;
import 'package:breathin_app/ui/views/authentication/signup/signup_view.dart'
    as _i3;
import 'package:breathin_app/ui/views/authentication/startup/startup_view.dart'
    as _i2;
import 'package:breathin_app/ui/views/bottom_navigation_bar/bottom_navigation_bar_view.dart'
    as _i6;
import 'package:breathin_app/ui/views/bottom_navigation_bar/explore/explore_view.dart'
    as _i7;
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_view.dart'
    as _i8;
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/music_player/music_player_view.dart'
    as _i11;
import 'package:breathin_app/ui/views/bottom_navigation_bar/profile/profile_view.dart'
    as _i9;
import 'package:flutter/material.dart' as _i12;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i14;

class Routes {
  static const startupView = '/startup-view';

  static const signupView = '/signup-view';

  static const loginView = '/login-view';

  static const resetPasswordView = '/reset-password-view';

  static const bottomNavigationBarView = '/bottom-navigation-bar-view';

  static const exploreView = '/explore-view';

  static const homeView = '/home-view';

  static const profileView = '/profile-view';

  static const languageSelectionView = '/language-selection-view';

  static const musicPlayerView = '/music-player-view';

  static const all = <String>{
    startupView,
    signupView,
    loginView,
    resetPasswordView,
    bottomNavigationBarView,
    exploreView,
    homeView,
    profileView,
    languageSelectionView,
    musicPlayerView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i3.SignupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.resetPasswordView,
      page: _i5.ResetPasswordView,
    ),
    _i1.RouteDef(
      Routes.bottomNavigationBarView,
      page: _i6.BottomNavigationBarView,
    ),
    _i1.RouteDef(
      Routes.exploreView,
      page: _i7.ExploreView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i8.HomeView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i9.ProfileView,
    ),
    _i1.RouteDef(
      Routes.languageSelectionView,
      page: _i10.LanguageSelectionView,
    ),
    _i1.RouteDef(
      Routes.musicPlayerView,
      page: _i11.MusicPlayerView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.SignupView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.SignupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.ResetPasswordView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ResetPasswordView(),
        settings: data,
      );
    },
    _i6.BottomNavigationBarView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.BottomNavigationBarView(),
        settings: data,
      );
    },
    _i7.ExploreView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.ExploreView(),
        settings: data,
      );
    },
    _i8.HomeView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.HomeView(),
        settings: data,
      );
    },
    _i9.ProfileView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ProfileView(),
        settings: data,
      );
    },
    _i10.LanguageSelectionView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.LanguageSelectionView(),
        settings: data,
      );
    },
    _i11.MusicPlayerView: (data) {
      final args = data.getArgs<MusicPlayerViewArguments>(nullOk: false);
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.MusicPlayerView(
            key: args.key,
            selectedIndex: args.selectedIndex,
            breathin: args.breathin),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MusicPlayerViewArguments {
  const MusicPlayerViewArguments({
    this.key,
    required this.selectedIndex,
    required this.breathin,
  });

  final _i12.Key? key;

  final int selectedIndex;

  final List<_i13.BreathinModel> breathin;

  @override
  String toString() {
    return '{"key": "$key", "selectedIndex": "$selectedIndex", "breathin": "$breathin"}';
  }

  @override
  bool operator ==(covariant MusicPlayerViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.selectedIndex == selectedIndex &&
        other.breathin == breathin;
  }

  @override
  int get hashCode {
    return key.hashCode ^ selectedIndex.hashCode ^ breathin.hashCode;
  }
}

extension NavigatorStateExtension on _i14.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.resetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBottomNavigationBarView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bottomNavigationBarView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToExploreView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.exploreView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLanguageSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.languageSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMusicPlayerView({
    _i12.Key? key,
    required int selectedIndex,
    required List<_i13.BreathinModel> breathin,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.musicPlayerView,
        arguments: MusicPlayerViewArguments(
            key: key, selectedIndex: selectedIndex, breathin: breathin),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.resetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBottomNavigationBarView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bottomNavigationBarView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithExploreView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.exploreView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLanguageSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.languageSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMusicPlayerView({
    _i12.Key? key,
    required int selectedIndex,
    required List<_i13.BreathinModel> breathin,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.musicPlayerView,
        arguments: MusicPlayerViewArguments(
            key: key, selectedIndex: selectedIndex, breathin: breathin),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
