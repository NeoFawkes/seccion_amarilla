import 'package:flutter/material.dart';

class SecondaryAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;

  const SecondaryAppBar({
    super.key,
    this.title = ""
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title), centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}