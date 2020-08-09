import 'package:flutter/material.dart';

/// Our UX Design Systen contains different colors.
/// Because we are facing different kinds of users within different
/// products, each specific function in Home Credit apps and
/// websites uses different colors to denote a different purpose.
/// This is done to make it easier for users to grasp a feel
/// on what they are facing and thus influence how they behave.
class DirectColor {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  DirectColor._();

  /// Red Zero, our main logo color, is mainly used
  /// as page titles, warnings, and interactive elements.
  static const Color primaryRed = Color(0xFFE11931);

  /// Black Zero, our main logo monochromatic
  /// color is used as text and text fields.
  static const Color primaryBlack = Color(0xFF262626);

  /// White Zero is used as the screen's background to give contrast
  static const Color primaryWhite = Color(0xFFFFFFF);

  /// Green Zero denotes success and shows progress
  static const Color secondaryGreen = Color(0xFF3EAC58);

  ///Blue Zero is used as a background in several products
  static const Color secondaryBlue = Color(0xFF3C91E6);

  /// Orange Zero warns the users
  static const Color secondaryOrange = Color(0xFFFF912A);

  ///  Gold Zero is used as a bonus card
  static const Color secondaryGold = Color(0xFFFFBA08);

  /// The direct red primary color and swatch
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: DirectColor.directRed[100],
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const MaterialColor directRed = MaterialColor(
    _directRedPrimaryValue,
    <int, Color>{
      20: Color(0xFFFCE8EA),
      50: Color(0xFFEC7482),
      100: Color(_directRedPrimaryValue),
      200: Color(0xFF860E1D),
    },
  );
  static const int _directRedPrimaryValue = 0xFFE11931;

  /// The direct black primary color and swatch
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: DirectColor.directBlack[100],
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const MaterialColor directBlack = MaterialColor(
    _directBlackPrimaryValue,
    <int, Color>{
      20: Color(0xFFF4F4F4),
      40: Color(0xFFC8C8C8),
      80: Color(0xFF7B7B7B),
      100: Color(_directBlackPrimaryValue),
    },
  );
  static const int _directBlackPrimaryValue = 0xFF860E1D;

  /// The direct green primary color and swatch
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: DirectColor.directGreen[100],
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const MaterialColor directGreen = MaterialColor(
    _directGreenPrimaryValue,
    <int, Color>{
      20: Color(0xFFECF6EE),
      80: Color(0xFF8ACC9A),
      100: Color(_directGreenPrimaryValue),
      200: Color(0xFF246634),
    },
  );
  static const int _directGreenPrimaryValue = 0xFF3EAC58;

  /// The direct blue primary color and swatch
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: DirectColor.directBlue[100],
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const MaterialColor directBlue = MaterialColor(
    _directBluePrimaryValue,
    <int, Color>{
      20: Color(0xFFEBF4FC),
      80: Color(0xFF89BCEF),
      100: Color(_directBluePrimaryValue),
      200: Color(0xFF235689),
    },
  );
  static const int _directBluePrimaryValue = 0xFF3C91E6;

  /// The direct orange primary color and swatch
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: DirectColor.directOrange[100],
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const MaterialColor directOrange = MaterialColor(
    _directOrangePrimaryValue,
    <int, Color>{
      20: Color(0xFFFFF4EA),
      80: Color(0xFFFFBC7E),
      100: Color(_directOrangePrimaryValue),
      200: Color(0xFF985619),
    },
  );
  static const int _directOrangePrimaryValue = 0xFFFF912A;

  /// The direct yellow color and swatch
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: DirectColor.directYellow[100],
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const MaterialColor directYellow = MaterialColor(
    _directYellowPrimaryValue,
    <int, Color>{
      20: Color(0xFFFFF8E6),
      80: Color(0xFFFFD569),
      100: Color(_directYellowPrimaryValue),
      200: Color(0xFF986E04),
    },
  );
  static const int _directYellowPrimaryValue = 0xFFFF912A;
}
