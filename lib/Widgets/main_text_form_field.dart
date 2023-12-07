import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget{
  final TextInputType keyboardType;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final bool autocorrect;
  final String? Function(String?)? validator;

  const MainTextFormField({
    super.key,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    required this.labelText,
    this.obscureText = false,
    this.autocorrect = false,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: autocorrect,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText
        ),
      ),
    );
  }
}