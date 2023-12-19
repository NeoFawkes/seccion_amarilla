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
                        MainTextFormField(
                          hintText: "********",
                          labelText: "Contraseña",
                          obscureText: true,
                          validator:(value){
                            if (value == null || value.isEmpty) return "El cámpo está vacío";
                            return null;
                          },
                        ),
                        ElevatedButton(
                          onPressed: (){
                            if (_formkey.currentState!.validate()){
                            }
                          },
                          child: const Text("Siguiente"),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 6
              ),
          ),
        ],
      ),
    );
  }
}