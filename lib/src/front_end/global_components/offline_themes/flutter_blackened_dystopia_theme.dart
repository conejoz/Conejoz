import 'package:flutter/material.dart';

class FlutterBlackenedDystopiaTheme {
  FlutterBlackenedDystopiaTheme._();

  // If you want to modify both themes at once, modify the colors below.

  static const Color _surfaceColor = Color(
      0xFF393E46); //* AppBars - Elevated Buttons - MAIN COLOR FOR THE BRAND.
  static const Color _errorColor =
      Color(0xFFFF4C29); //* Errors. MAIN COLOR FOR THE BRAND.
  static const Color _backgroundColor =
      Color(0xFF222831); //* Background. MAIN COLOR FOR THE BRAND.
  static const Color _onSurfaceColor =
      Color(0xFFE7F6F2); //* Text. MAIN COLOR FOR THE BRAND.
  static const Color _primaryContainer =
      Color(0xFF30475E); //* FloatingActionButtons. MAIN COLOR FOR THE BRAND.
  static const Color _onSurfaceVariant =
      Color.fromARGB(255, 13, 255, 231); //* Icons.
  static const Color _onPrimaryContainer =
      Color(0xFFF1EBBB); //* FloatingActionButtonsContent
  static const Color _primaryColor = Color(0xFFF1EBBB); //* TextFieldActive
  static const Color _outlineColor =
      Color.fromARGB(147, 231, 246, 242); //* TextFieldsOutline
  static const Color _hintTextColor = Color(0xFF4B5D67); //* TextFieldsHintText
  static const Color _primaryInverseColor = Color.fromARGB(255, 60, 69, 123);

  static const Color _onPrimaryColor = Color.fromARGB(255, 255, 121, 3);
  static const Color _onSecondaryColor = Color(0xFFE1E3E4);
  static const Color _onBackgroundColor = Color(0xFF828A9A);
  static const Color _secondaryColor = Color.fromARGB(255, 5, 55, 108);
  static const Color _onErrorColor = Color(0xFF354157);

  // If you want to modify the light theme only, modify the colors below.

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: FlutterBlackenedDystopiaTheme._primaryColor,
        background: FlutterBlackenedDystopiaTheme._backgroundColor,
        primary: FlutterBlackenedDystopiaTheme._primaryColor,
        secondary: FlutterBlackenedDystopiaTheme._secondaryColor,
        inversePrimary: FlutterBlackenedDystopiaTheme._primaryInverseColor,
        onSurface: FlutterBlackenedDystopiaTheme._onSurfaceColor,
        surface: FlutterBlackenedDystopiaTheme._surfaceColor,
        onSurfaceVariant: FlutterBlackenedDystopiaTheme._onSurfaceVariant,
        onPrimary: FlutterBlackenedDystopiaTheme._onPrimaryColor,
        onSecondary: FlutterBlackenedDystopiaTheme._onSecondaryColor,
        onBackground: FlutterBlackenedDystopiaTheme._onBackgroundColor,
        primaryContainer: FlutterBlackenedDystopiaTheme._primaryContainer,
        error: FlutterBlackenedDystopiaTheme._errorColor,
        onError: FlutterBlackenedDystopiaTheme._onErrorColor,
        errorContainer: FlutterBlackenedDystopiaTheme._errorColor,
        inverseSurface: FlutterBlackenedDystopiaTheme._errorColor,
        onErrorContainer: FlutterBlackenedDystopiaTheme._errorColor,
        onInverseSurface: FlutterBlackenedDystopiaTheme._errorColor,
        onPrimaryContainer:
            FlutterBlackenedDystopiaTheme._onPrimaryContainer, //* CHECKED
        onSecondaryContainer: FlutterBlackenedDystopiaTheme._errorColor,
        onTertiary: FlutterBlackenedDystopiaTheme._errorColor,
        onTertiaryContainer: FlutterBlackenedDystopiaTheme._errorColor,
        outline: FlutterBlackenedDystopiaTheme._outlineColor,
        outlineVariant: FlutterBlackenedDystopiaTheme._outlineColor,
        scrim: FlutterBlackenedDystopiaTheme._errorColor,
        secondaryContainer: FlutterBlackenedDystopiaTheme._errorColor,
        shadow: FlutterBlackenedDystopiaTheme
            ._surfaceColor, //* UnderElevadtedButton
        surfaceTint: FlutterBlackenedDystopiaTheme
            ._onSurfaceColor, //* SurfaceOfElevatedButton
        surfaceVariant: FlutterBlackenedDystopiaTheme._errorColor,
        tertiary: FlutterBlackenedDystopiaTheme._errorColor,
        tertiaryContainer: FlutterBlackenedDystopiaTheme._errorColor,
      ),
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
              color:
                  FlutterBlackenedDystopiaTheme._hintTextColor)) //* Hint text.
      );

  // If you want to modify the dark theme only, modify the colors below.

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: FlutterBlackenedDystopiaTheme._primaryColor,
      background: FlutterBlackenedDystopiaTheme._backgroundColor,
      primary: FlutterBlackenedDystopiaTheme._primaryColor,
      secondary: FlutterBlackenedDystopiaTheme._secondaryColor,
      inversePrimary: FlutterBlackenedDystopiaTheme._primaryInverseColor,
      onSurface: FlutterBlackenedDystopiaTheme._onSurfaceColor,
      surface: FlutterBlackenedDystopiaTheme._surfaceColor,
      onSurfaceVariant: FlutterBlackenedDystopiaTheme._onSurfaceVariant,
      onPrimary: FlutterBlackenedDystopiaTheme._onPrimaryColor,
      onSecondary: FlutterBlackenedDystopiaTheme._onSecondaryColor,
      onBackground: FlutterBlackenedDystopiaTheme._onBackgroundColor,
      primaryContainer: FlutterBlackenedDystopiaTheme._primaryContainer,
      error: FlutterBlackenedDystopiaTheme._errorColor,
      onError: FlutterBlackenedDystopiaTheme._onErrorColor,
    ),
  );
}

// A custom theme by Ivan Robayo | Check out FlutterCustomThemesVol1 for more.
// GitHub: @navirobayo