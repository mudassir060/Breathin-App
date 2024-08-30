/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/Apple.png');

  /// File path: assets/icons/Google logo.png
  AssetGenImage get googleLogo =>
      const AssetGenImage('assets/icons/Google logo.png');

  /// File path: assets/icons/Like.png
  AssetGenImage get like => const AssetGenImage('assets/icons/Like.png');

  /// File path: assets/icons/discover.png
  AssetGenImage get discover =>
      const AssetGenImage('assets/icons/discover.png');

  /// File path: assets/icons/heart.png
  AssetGenImage get heart => const AssetGenImage('assets/icons/heart.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/message.png
  AssetGenImage get message => const AssetGenImage('assets/icons/message.png');

  /// File path: assets/icons/music_filter.png
  AssetGenImage get musicFilter =>
      const AssetGenImage('assets/icons/music_filter.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/record_Illustration.png
  AssetGenImage get recordIllustration =>
      const AssetGenImage('assets/icons/record_Illustration.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/un_like.png
  AssetGenImage get unLike => const AssetGenImage('assets/icons/un_like.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        googleLogo,
        like,
        discover,
        heart,
        home,
        message,
        musicFilter,
        notification,
        profile,
        recordIllustration,
        search,
        unLike
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/auth_background.png
  AssetGenImage get authBackground =>
      const AssetGenImage('assets/images/auth_background.png');

  /// File path: assets/images/music_background.png
  AssetGenImage get musicBackground =>
      const AssetGenImage('assets/images/music_background.png');

  /// File path: assets/images/player.png
  AssetGenImage get player => const AssetGenImage('assets/images/player.png');

  /// File path: assets/images/splesh_cover.png
  AssetGenImage get spleshCover =>
      const AssetGenImage('assets/images/splesh_cover.png');

  /// File path: assets/images/stars.png
  AssetGenImage get stars => const AssetGenImage('assets/images/stars.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [authBackground, musicBackground, player, spleshCover, stars];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
