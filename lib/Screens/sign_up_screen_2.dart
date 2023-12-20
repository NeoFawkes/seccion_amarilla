import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Models/user.dart';
import '../Tools/regex_pattern.dart';
import '../Widgets/widgets.dart';

class SignUpScreen2 extends StatefulWidget{
  const SignUpScreen2({super.key});

  @override
  State<SignUpScreen2> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen2> {

  final _formkey = GlobalKey<FormState>();
  final User user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SecondaryAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        const TextTitle(text: "No necesitamos mucho para empezar..."),
                        const TextSubTitle(text: "Ingresa el nombre que usas en la vida real"),
                        Row(
                          children: <Widget>[
                            NameTextFormField(
                                hintText: "John",
                                labelText: "Nombre",
                                validator: (value){
                                  if (value == null || value.isEmpty) return "El campo está vacío";
                                  user.setFirstName = value;
                                  return null;
                                }
                            ),
                            NameTextFormField(
                                hintText: "Doe",
                                labelText: "Apellido",
                                validator: (value){
                                  if (value == null || value.isEmpty) return "El campo está vacío";
                                  user.setLastName = value;
                                  return null;
                                }
                            ),
                          ],
                        ),
                         EmailTextFormField(
                          validator: (value){
                            RegExp regExp = RegExp(RegexPattern.emailPattern);
                            if(value == null || value.isEmpty || !regExp.hasMatch(value)) return "Ingresa un correo válido";
                            user.setEmail = value;
                            return null;
                          },
                        ),
                        MainTextFormField(
                          hintText: "********",
                          labelText: "Contraseña",
                          obscureText: true,
                          validator:(value){
                            if (value == null || value.isEmpty) return "El campo está vacío";
                            user.setPassword = value;
                            return null;
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: ElevatedButton(
                            onPressed: (){
                              if (_formkey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Se envió un correo para verificar tu cuenta')),
                                );
                              }
                            },
                            child: const Text("Crear nueva cuenta"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 1
              ),
          ),
        ],
      ),
    );
  }
}