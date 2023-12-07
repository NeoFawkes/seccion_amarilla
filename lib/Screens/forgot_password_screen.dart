import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Widgets/widgets.dart';

import '../Router/app_routes.dart';

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
      body: Form( autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formkey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      TextTitle(text: "Encuentra tu cuenta"),
                      TextSubTitle(text: "Ingresa tu correo electrónico"),
                      EmailTextFormField(),
                    ],
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
            )
          ],
        ),
      ),
    );
  }
}