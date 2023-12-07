import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Widgets/main_app_bar.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(title: "Início"),
    );
  }

}