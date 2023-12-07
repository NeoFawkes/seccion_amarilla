import 'package:flutter/material.dart';

class TextSubTitle extends StatelessWidget{

  final String text;
  final Alignment alignment;

  const TextSubTitle({
    super.key,
    required this.text,
    this.alignment = Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Text(text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

}