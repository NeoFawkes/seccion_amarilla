import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget{
  const AlertScreen({super.key});

  void displayDialogAndroid(BuildContext context){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return  AlertDialog(
            title: const Text("Título"),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Aceptar")
              )
            ],
          );
        }
    );
  }

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: const Text("Título"),
            content: const Column(
              children: [
                Text("Contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Aceptar")
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context),
            child: const Text("Mostrar alerta")
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        enableFeedback: true ,
        tooltip: 'Regresar a la pantalla de inicio',
        child: const Icon(Icons.close),
      ),
    );
  }
}