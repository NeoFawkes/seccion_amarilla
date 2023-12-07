import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;

  const MainAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title), centerTitle: true,
      leading: Builder(
        builder: (BuildContext context){
          return IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu),
            tooltip: "Menú",
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.person_pin),
          tooltip: "Perfíl",
        ),
      ],
    );
  }
}