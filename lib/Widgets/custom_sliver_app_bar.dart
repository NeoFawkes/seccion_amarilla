import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;

  const CustomSliverAppBar({
    super.key,
    this.title = ""
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(title), centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}