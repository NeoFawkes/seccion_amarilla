import 'package:flutter/material.dart';

import '../Tools/regex_pattern.dart';

class EmailTextFormField extends StatelessWidget{


  const EmailTextFormField({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: true,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        validator: (value){
          RegExp regExp = RegExp(RegexPattern.emailPattern);
          return !regExp.hasMatch(value?? '')? "Ingresa un correo válido" : null;
        },
        decoration: const InputDecoration(
          hintText: "john@email.com",
          labelText: "Correo Electrónico"
        ),
      ),
    );
  }
}