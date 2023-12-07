import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Theme/color_scheme.dart';

class CustomTheme{
  static const double width = 365;
  static const double height = 45;

  static ThemeData get getLightThemeData{
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      appBarTheme: AppBarTheme(
          color: lightColorScheme.primary,
          foregroundColor: lightColorScheme.onPrimary
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          )
      ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(width,height),
              elevation: 5,
            )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(width,height),
                elevation: 5
            )
        )
    );
  }

  static ThemeData get getDarkThemeData{
    return ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        appBarTheme: AppBarTheme(
          color: darkColorScheme.onPrimary,
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
            )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(width,height),
              elevation: 5
            ),
        ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            minimumSize: const Size(width,height),
            elevation: 5
        )
      )
    );
  }

}
