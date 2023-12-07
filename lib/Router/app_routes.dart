import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Screens/screens.dart';
import 'package:seccion_amarilla/Models/menu_option.dart';

class AppRoutes{
  static const initialRoute = "homePageScreen";

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'mainScreen', iconData: Icons.home, name: 'Início', screen: const MainScreen()),
    MenuOption(route: 'forgotPasswordScreen', iconData: Icons.home, name: 'Recuperar contraseña', screen: const ForgotPasswordScreen()),
    MenuOption(route: 'signUpScreen1', iconData: Icons.home, name: 'Crear una nueva cuenta', screen: const SignUpScreen1()),
    MenuOption(route: 'signUpScreen2', iconData: Icons.home, name: 'Crear una nueva cuenta', screen: const SignUpScreen2()),
    MenuOption(route: 'signUpScreen3', iconData: Icons.home, name: 'Crear una nueva cuenta', screen: const SignUpScreen3()),
    MenuOption(route: 'signUpScreen4', iconData: Icons.home, name: 'Crear una nueva cuenta', screen: const SignUpScreen4()),
    MenuOption(route: 'signUpScreen5', iconData: Icons.home, name: 'Crear una nueva cuenta', screen: const SignUpScreen5()),
    MenuOption(route: 'signUpScreen6', iconData: Icons.home, name: 'Crear una nueva cuenta', screen: const SignUpScreen6()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes={};
    appRoutes.addAll({initialRoute: (BuildContext context) => const HomePageScreen()});
    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(builder: (contex) => const AlertScreen());
  }

}