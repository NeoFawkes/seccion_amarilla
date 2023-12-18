import 'package:flutter/material.dart';
import 'package:seccion_amarilla/Widgets/widgets.dart';
import 'package:seccion_amarilla/Router/app_routes.dart';

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: true,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
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
                              // Validate retorna verdader si el formulario es valido, falso de otro modo
                              if (_formkey.currentState!.validate()){
                                // Si el formulario es válido, navega a MainScreen y despliega un snackbar
                                Navigator.pushNamed(context, AppRoutes.menuOptions[0].route);
                                //Navigator.popAndPushNamed(context, AppRoutes.menuOptions[0].route);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Sesión Iniciada')),
                                );
                              }
                            },
                            child: const Text("Inciar Sesión"),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, AppRoutes.menuOptions[1].route);
                              },
                              child: const Text("¿Olvidaste tu contraseña?")
                          ),
                        ],
                      ),
                      OutlinedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, AppRoutes.menuOptions[2].route);
                          },
                          child: const Text("Crear una nueva cuenta")
                      ),
                    ]
                ),
              )
            ],
          ),
      )
    );
  }
}