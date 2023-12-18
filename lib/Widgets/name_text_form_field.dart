import 'package:flutter/material.dart';

class NameTextFormField extends StatelessWidget{
  final String hintText;
  final String labelText;
  final String? Function(String?)? validator;

  const NameTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          autocorrect: true,
          keyboardType: TextInputType.name,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText
          ),
        ),
      ),
    );
  }
}