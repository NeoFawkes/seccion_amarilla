import 'package:flutter/material.dart';


class EmailTextFormField extends StatelessWidget{

  final String? Function(String?)? validator;

  const EmailTextFormField({
    super.key,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        autocorrect: true,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        validator: validator,
        decoration: const InputDecoration(
          hintText: "john@email.com",
          labelText: "Correo Electrónico"
        ),
      ),
    );
  }
}