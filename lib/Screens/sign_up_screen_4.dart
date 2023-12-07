import 'package:flutter/material.dart';
import '../Router/app_routes.dart';
import '../Tools/strings.dart';
import '../Widgets/widgets.dart';

class SignUpScreen4 extends StatefulWidget{
   const SignUpScreen4({super.key});

  @override
  State<SignUpScreen4> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen4> {

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
                  const TextTitle(text: "Únete a la Sección Amarilla", alignment: Alignment.topLeft),
                  const CustomCardType2(imageName: "sign_up.jpeg", description: Strings.signUpMessage),
                  ElevatedButton(
                    onPressed: (){
                      // Validate retorna verdadero si el formulario es valido, falso de otro modo
                      if (_formkey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Correo electrónico enviado')),
                        );
                      }
                    },
                    child: const Text("Empezar"),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, AppRoutes.initialRoute);
                      },
                      child: const Text("Ya tengo una cuenta")
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