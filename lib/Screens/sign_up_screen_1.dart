import 'package:flutter/material.dart';
import '../Router/app_routes.dart';
import '../Tools/strings.dart';
import '../Widgets/widgets.dart';

class SignUpScreen1 extends StatelessWidget{
   const SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SecondaryAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: <Widget>[
                const TextTitle(text: "Únete a la Sección Amarilla"),
                const CustomCardType2(imageName: "sign_up.jpeg", description: Strings.signUpMessage),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AppRoutes.menuOptions[3].route);
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
    );
  }
}