import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget{

  final String imageName;
  final String description;
  const CustomCardType2({super.key, required this.imageName,  this.description = 'Sin descripción'});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      clipBehavior: Clip.antiAlias,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      shadowColor: Theme.of(context).colorScheme.primary,
      elevation: 5,
      child: Column(
        children:  [
          FadeInImage(
            image: AssetImage('assets/images/$imageName'),
            placeholder: const AssetImage('assets/images/placeholder.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(15),
            child: Text(description),
          ),
        ],
      ),

    );
  }
}