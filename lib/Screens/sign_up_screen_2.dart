import 'package:flutter/material.dart';
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
      body: Form(
        key: _formkey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  const TextTitle(text: "¿Cómo te llamas?"),
                  const TextSubTitle(text: "Ingresa el nombre que usas en la vida real"),
                  Row(
                    children: <Widget>[
                      NameTextFormField(
                          hintText: "John",
                          labelText: "Nombre",
                          validator: (value){
                            if (value == null || value.isEmpty) return "El cámpo está vacío";
                            return null;
                          }
                      ),
                      NameTextFormField(
                          hintText: "Doe",
                          labelText: "Apellido",
                          validator: (value){
                            if (value == null || value.isEmpty) return "El cámpo está vacío";
                            return null;
                          }
                      ),
                    ],
                  ),

                  const EmailTextFormField(),

                  ElevatedButton(
                    onPressed: (){
                      if (_formkey.currentState!.validate()){
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