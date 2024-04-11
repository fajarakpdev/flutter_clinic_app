/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Log Out.svg
  SvgGenImage get logOut => const SvgGenImage('assets/icons/Log Out.svg');

  /// File path: assets/icons/chart-pie.svg
  SvgGenImage get chartPie => const SvgGenImage('assets/icons/chart-pie.svg');

  /// File path: assets/icons/delete.svg
  SvgGenImage get delete => const SvgGenImage('assets/icons/delete.svg');

  /// File path: assets/icons/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/icons/filter.svg');

  /// File path: assets/icons/folder-open.svg
  SvgGenImage get folderOpen =>
      const SvgGenImage('assets/icons/folder-open.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/setting.svg');

  /// File path: assets/icons/shopping-bag-product.svg
  SvgGenImage get shoppingBagProduct =>
      const SvgGenImage('assets/icons/shopping-bag-product.svg');

  /// File path: assets/icons/sort.svg
  SvgGenImage get sort => const SvgGenImage('assets/icons/sort.svg');

  /// File path: assets/icons/success.svg
  SvgGenImage get success => const SvgGenImage('assets/icons/success.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        logOut,
        chartPie,
        delete,
        filter,
        folderOpen,
        logo,
        setting,
        shoppingBagProduct,
        sort,
        success
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Splash Screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('assets/images/Splash Screen.png');

  /// File path: assets/images/dokterku.png
  AssetGenImage get dokterku =>
      const AssetGenImage('assets/images/dokterku.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  $AssetsImagesMenuGen get menu => const $AssetsImagesMenuGen();
  $AssetsImagesProductsGen get products => const $AssetsImagesProductsGen();

  /// List of all assets
  List<AssetGenImage> get values => [splashScreen, dokterku, google];
}

class $AssetsImagesMenuGen {
  const $AssetsImagesMenuGen();

  /// File path: assets/images/menu/data.png
  AssetGenImage get data => const AssetGenImage('assets/images/menu/data.png');

  /// File path: assets/images/menu/jadwal.png
  AssetGenImage get jadwal =>
      const AssetGenImage('assets/images/menu/jadwal.png');

  /// File path: assets/images/menu/layanan.png
  AssetGenImage get layanan =>
      const AssetGenImage('assets/images/menu/layanan.png');

  /// List of all assets
  List<AssetGenImage> get values => [data, jadwal, layanan];
}

class $AssetsImagesProductsGen {
  const $AssetsImagesProductsGen();

  /// File path: assets/images/products/paracetamol.jpg
  AssetGenImage get paracetamol =>
      const AssetGenImage('assets/images/products/paracetamol.jpg');

  /// File path: assets/images/products/sarung tangan medis.jpg
  AssetGenImage get sarungTanganMedis =>
      const AssetGenImage('assets/images/products/sarung tangan medis.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [paracetamol, sarungTanganMedis];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
