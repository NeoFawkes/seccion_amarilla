import 'package:flutter/material.dart';
import '../Router/app_routes.dart';
import '../Tools/strings.dart';
import '../Widgets/widgets.dart';

class SignUpScreen2 extends StatefulWidget{
   const SignUpScreen2({super.key});

  @override
  State<SignUpScreen2> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen2> {

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
                  const TextTitle(text: "¿Cómo te llamas?"),
                  const TextSubTitle(text: "Ingresa el nombre que usas en la vida real"),
                  MainTextFormField(
                      hintText: "John",
                      labelText: "Nombre",
                      validator: (value){
                        if (value == null || value.isEmpty) return "El cámpo está vacío";
                        return null;
                      }
                  ),
                  MainTextFormField(
                      hintText: "Doe",
                      labelText: "Apellido",
                      validator: (value){
                        if (value == null || value.isEmpty) return "El cámpo está vacío";
                        return null;
                      }
                  ),
                  ElevatedButton(
                    onPressed: (){
                      // Validate retorna verdadero si el formulario es valido, falso de otro modo
                      if (_formkey.currentState!.validate()){
                        Navigator.pushNamed(context, AppRoutes.menuOptions[4].route);
                      }
                    },
                    child: const Text("Siguiente"),
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