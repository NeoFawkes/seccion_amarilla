import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Widgets/main_app_bar.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.onPrimary
      ),
      appBar: const MainAppBar(title: "Início"),
    );
  }

}