import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget{
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text("Lorem ipsum"),
            subtitle: const Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit."),
            leading: Icon(Icons.photo_album_outlined, color: Theme.of(context).colorScheme.primary,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    child: const Text("Aceptar")
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text("Cancelar")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}