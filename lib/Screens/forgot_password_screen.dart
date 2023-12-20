import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Widgets/widgets.dart';

import '../Tools/regex_pattern.dart';

class ForgotPasswordScreen extends StatefulWidget{


  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SecondaryAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Form(
              key: _formkey,
              child: Column(
               children: <Widget>[
                 const TextTitle(text: "Encuentra tu cuenta"),
                 const TextSubTitle(text: "Ingresa tu correo electrónico"),
                  EmailTextFormField(
                   validator: (value){
                     RegExp regExp = RegExp(RegexPattern.emailPattern);
                     return !regExp.hasMatch(value?? '')? "Ingresa un correo válido" : null;
                   },
                 ),
                 ElevatedButton(
                   onPressed: (){
                     // Validate retorna verdader si el formulario es valido, falso de otro modo
                     if (_formkey.currentState!.validate()){
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content: Text('Correo electrónico enviado')),
                       );
                     }
                   },
                   child: const Text("Encontrar Cuenta"),
                 ),
               ],
                                ),
            ),
          )
        ],
      ),
    );
  }
}