import 'package:flutter/material.dart';

class DefaultAppTheme {
  DefaultAppTheme._();

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
        seedColor: DefaultAppTheme._primaryColor,
        background: DefaultAppTheme._backgroundColor,
        primary: DefaultAppTheme._primaryColor,
        secondary: DefaultAppTheme._secondaryColor,
        inversePrimary: DefaultAppTheme._primaryInverseColor,
        onSurface: DefaultAppTheme._onSurfaceColor,
        surface: DefaultAppTheme._surfaceColor,
        onSurfaceVariant: DefaultAppTheme._onSurfaceVariant,
        onPrimary: DefaultAppTheme._onPrimaryColor,
        onSecondary: DefaultAppTheme._onSecondaryColor,
        onBackground: DefaultAppTheme._onBackgroundColor,
        primaryContainer: DefaultAppTheme._primaryContainer,
        error: DefaultAppTheme._errorColor,
        onError: DefaultAppTheme._onErrorColor,
        errorContainer: DefaultAppTheme._errorColor,
        inverseSurface: DefaultAppTheme._errorColor,
        onErrorContainer: DefaultAppTheme._errorColor,
        onInverseSurface: DefaultAppTheme._errorColor,
        onPrimaryContainer: DefaultAppTheme._onPrimaryContainer, //* CHECKED
        onSecondaryContainer: DefaultAppTheme._errorColor,
        onTertiary: DefaultAppTheme._errorColor,
        onTertiaryContainer: DefaultAppTheme._errorColor,
        outline: DefaultAppTheme._outlineColor,
        outlineVariant: DefaultAppTheme._outlineColor,
        scrim: DefaultAppTheme._errorColor,
        secondaryContainer: DefaultAppTheme._errorColor,
        shadow: DefaultAppTheme._surfaceColor, //* UnderElevadtedButton
        surfaceTint:
            DefaultAppTheme._onSurfaceColor, //* SurfaceOfElevatedButton
        surfaceVariant: DefaultAppTheme._errorColor,
        tertiary: DefaultAppTheme._errorColor,
        tertiaryContainer: DefaultAppTheme._errorColor,
      ),
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle:
              TextStyle(color: DefaultAppTheme._hintTextColor)) //* Hint text.
      );

  // If you want to modify the dark theme only, modify the colors below.

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: DefaultAppTheme._primaryColor,
      background: DefaultAppTheme._backgroundColor,
      primary: DefaultAppTheme._primaryColor,
      secondary: DefaultAppTheme._secondaryColor,
      inversePrimary: DefaultAppTheme._primaryInverseColor,
      onSurface: DefaultAppTheme._onSurfaceColor,
      surface: DefaultAppTheme._surfaceColor,
      onSurfaceVariant: DefaultAppTheme._onSurfaceVariant,
      onPrimary: DefaultAppTheme._onPrimaryColor,
      onSecondary: DefaultAppTheme._onSecondaryColor,
      onBackground: DefaultAppTheme._onBackgroundColor,
      primaryContainer: DefaultAppTheme._primaryContainer,
      error: DefaultAppTheme._errorColor,
      onError: DefaultAppTheme._onErrorColor,
    ),
  );
}

// A custom theme by Ivan Robayo | Check out FlutterCustomThemesVol1 for more.
// GitHub: @navirobayo