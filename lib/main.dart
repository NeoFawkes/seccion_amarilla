import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Router/app_routes.dart';
import 'package:seccion_amarilla/Theme/custom_theme.dart';
import 'Screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Freedom',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes:AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      themeMode: ThemeMode.system,
      theme: CustomTheme.getLightThemeData,
      darkTheme: CustomTheme.getDarkThemeData,
      home: const HomePageScreen()
    );
  }
}
