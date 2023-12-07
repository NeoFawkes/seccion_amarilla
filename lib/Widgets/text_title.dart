import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget{

  final String text;
  final Alignment alignment;

  const TextTitle({
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
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

}